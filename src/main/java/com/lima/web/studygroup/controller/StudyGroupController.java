package com.lima.web.studygroup.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequestMapping("/studygroup")
@SessionAttributes("loginUser")
public class StudyGroupController {

  @GetMapping("list")
  public void findAll(Model model) {

  }
}
