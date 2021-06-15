package com.nagarro.hrmanagerapp.controller;

import java.io.IOException;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.nagarro.hrmanagerapp.csvreader.CSVReader;
import com.nagarro.hrmanagerapp.model.Employee;

@Controller
public class EmployeeListController {

	@Autowired
	private CSVReader csvReader;

	@SuppressWarnings({ "unchecked", "rawtypes" })
	@RequestMapping("/listEmployees")
	public ModelAndView listEmployees() {
		RestTemplate rest = new RestTemplate();
		String url = "http://localhost:3000/api/Employee";
		List<LinkedHashMap> employees = rest.getForObject(url, List.class);
		return new ModelAndView("list-employees", "employees", employees);

	}
//	public Employee listEmployees1() {
//		RestTemplate rest = new RestTemplate();
//		String url = "http://localhost:3000/api/Employee";
//		List<LinkedHashMap> employees = rest.getForObject(url, List.class);
//		return new ModelAndView("list-employees", "employees", employees);
//
//	}

	public Employee[] getEmployeeList() {
		RestTemplate rest = new RestTemplate();
		ResponseEntity<Employee[]> response = rest.getForEntity("http://localhost:3000/api/Employee", Employee[].class);
		Employee[] employees = response.getBody();
		return employees;
	}

	@RequestMapping("/editEmployee")
	public String editEmployee(@RequestParam("employeeCode") int employeeCode,
			@ModelAttribute("Employee") Employee emp) {

		String url = "http://localhost:3000/api/Employee";
		RestTemplate rest = new RestTemplate();
		rest.put(url, emp);
		return "redirect:/listEmployees";

	}

	@RequestMapping("/showFormForAdd")
	public String showFormForAdd(Model model) {
		Employee emp = new Employee();
		model.addAttribute("Employee", emp);
		return "edit-form";
	}

	@RequestMapping("/saveCustomer")
	public String addNewEmployee(@ModelAttribute("Employee") Employee emp) {

		String url = "http://localhost:3000/api/Employee";
		RestTemplate rest = new RestTemplate();
		rest.postForObject(url, emp, Employee.class);
		return "redirect:/listEmployees";
	}

	@GetMapping("/DownloadFile")
	public String downloadFile(HttpServletResponse response) throws IOException {
		List<Employee> employees = Arrays.asList(getEmployeeList());
		csvReader.exportDataToCSV(response, employees);
		return "redirect:EmployeeManager";
	}

}
