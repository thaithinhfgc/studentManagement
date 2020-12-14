package com.example.demo;

import org.springframework.stereotype.Service;
import java.util.List;
import java.util.ArrayList;

@Service
public class StudentServiceImpl implements StudentService {

    @Override
    public List<Student> getStudentList() {
        Student student1 = new Student();
        student1.name = "thinh";
        student1.age = 19;
        student1.year = 2001;
        student1.physical = 9.0;
        student1.math = 9.0;
        student1.chemistry = 9.0;

        Student student2 = new Student();
        student2.name = "nhan";
        student2.age = 23;
        student2.year = 1997;
        student2.physical = 8.0;
        student2.math = 8.0;
        student2.chemistry = 8.0;

        List<Student> list = new ArrayList<Student>();
        list.add(student1);
        list.add(student2);

        return list;
    }
}
