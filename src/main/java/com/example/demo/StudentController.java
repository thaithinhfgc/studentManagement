package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import java.util.List;

@Controller
public class StudentController {

    @Autowired
    StudentService studentService;

    @GetMapping(value = "/home")
    public String getStudentHome() {
        return "studentHome";
    }

    @GetMapping(value = "/form")
    public String getStudentForm() {
        return "studentForm";
    }

    @GetMapping(value = "/table")
    public String getStudentTable(Model model) {
        List<Student> studentList = this.studentService.getStudentList();
        model.addAttribute("students", studentList);
        return "studentTable";
    }

    @GetMapping(value = "/sumary")
    public String getStudentSumary() {
        return "studentSumary";
    }

}
