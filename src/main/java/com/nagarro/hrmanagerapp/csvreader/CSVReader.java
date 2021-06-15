package com.nagarro.hrmanagerapp.csvreader;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.supercsv.io.CsvBeanWriter;
import org.supercsv.io.ICsvBeanWriter;
import org.supercsv.prefs.CsvPreference;

import com.nagarro.hrmanagerapp.model.Employee;

@Controller
public class CSVReader {

	@Autowired
	private Employee employee;

//	public List<Employee> fetchEmployeeDetailsFromCSV(MultipartFile file) {
//		try (BufferedReader reader = new BufferedReader(new InputStreamReader(file.getInputStream()))) {
//
//			List<Employee> employees = new ArrayList<Employee>();
//			String newLine = reader.readLine();
//			while ((newLine = reader.readLine()) != null) {
//				String data[] = newLine.split("\\|");
//				employee.setEmployeeCode(Integer.parseInt(data[0]));
//				employee.setEmployeeName(data[1]);
//				employee.setLocation(data[2]);
//				employee.setEmail(data[3]);
//				employee.setDateOfBirth(data[4]);
//				employees.add(employee);
//			}
//			return employees;
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//
//		return null;
//
//	}

	public void exportDataToCSV(HttpServletResponse res, List<Employee> employeeList) throws IOException {
		res.setContentType("text/csv");
		DateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd_HH-mm-ss");
		String currentDateTime = dateFormatter.format(new Date());
		String headerKey = "Content-Disposition";
		String headerValue = "attachment; filename=Employees.csv";
		res.setHeader(headerKey, headerValue);
		ICsvBeanWriter csvWriter = new CsvBeanWriter(res.getWriter(), CsvPreference.STANDARD_PREFERENCE);
		String[] csvHeader = { "Employee Code", "Employee Name", "Location", "Email", "Date Of Birth" };
		String[] nameMapping = { "employeeCode", "employeeName", "location", "email", "dateOfBirth" };
		csvWriter.writeHeader(csvHeader);
		for (Employee employee : employeeList) {

			csvWriter.write(employee, nameMapping);
		}

		csvWriter.close();
	}
}