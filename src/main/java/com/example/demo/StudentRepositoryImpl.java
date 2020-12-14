package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;

public class StudentRepositoryImpl implements StudentRepository {
    @Autowired
    MongoTemplate mongoTemplate;

    @Override
    public Student getStudentByName(String name) {
        Query query = new Query(Criteria.where("name").is(name));
        return this.mongoTemplate.findOne(query, Student.class);
    }
}
