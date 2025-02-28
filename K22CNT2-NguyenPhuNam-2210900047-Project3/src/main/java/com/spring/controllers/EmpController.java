package com.spring.controllers;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.spring.beans.Emp;
import com.spring.beans.MenuItem;
import com.spring.dao.EmpDao;

@Controller
public class EmpController {

	@Autowired
	EmpDao dao;// will inject dao from xml file

	/*
	 * It displays a form to input data, here "command" is a reserved request
	 * attribute which is used to display object data into form
	 */
	@GetMapping("/empform")
	public String showform(Model m) {
		m.addAttribute("command", new Emp());
		return "saveview";
	}

	/*
	 * It saves object into database. The @ModelAttribute puts request data into
	 * model object. You need to mention RequestMethod.POST method because default
	 * request is GET
	 */
	@PostMapping(value = "/save")
	public String save(@ModelAttribute("emp") Emp emp) {
		dao.save(emp);
		return "redirect:/view";// will redirect to viewemp request mapping
	}

	/* It provides list of employees in model object */
	@RequestMapping("/view")
	public String viewemp(Model m) {
		List<Emp> list = dao.getEmployees();
		m.addAttribute("list", list);
		return "view";
	}

	/*
	 * It displays object data into form for the given id. The @PathVariable puts
	 * URL data into variable.
	 */
	@RequestMapping(value = "/editemp/{id}")
	public String edit(@PathVariable int id, Model m) {
		Emp emp = dao.getEmpById(id);
		m.addAttribute("command", emp);
		return "editview";
	}

	/* It updates model object. */
	@RequestMapping(value = "/editsave", method = RequestMethod.POST)
	public String editsave(@ModelAttribute("emp") Emp emp) {
		dao.update(emp);
		return "redirect:/view";
	}

	/* It deletes record for the given id in URL and redirects to /viewemp */
	@RequestMapping(value = "/deleteemp/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable int id) {
		dao.delete(id);
		return "redirect:/view";
	}

	@GetMapping("/menu")
	public String getMenu(Model model) {
		List<MenuItem> menuItems = Arrays.asList(new MenuItem("Home", "/SpringMVCPagination/"),
				new MenuItem("Employees List", "/SpringMVCPagination/view"),
				new MenuItem("Add New Employees", "/SpringMVCPagination/empform"));
		model.addAttribute("menuItems", menuItems);
		return "menu";
	}

}