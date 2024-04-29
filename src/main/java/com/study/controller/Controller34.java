package com.study.controller;

import com.study.mapper.Mapper05;
import com.study.service.Service01;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("main34")
@RequiredArgsConstructor
public class Controller34 {
    private final Service01 service;

    @GetMapping("sub1")
    public void method1(Integer year, Integer month, Model model) {

        List<Mapper05.EmployeeIncome> value = service.employeeIncomeList(year, month);
        model.addAttribute("incomeList", value);
        model.addAttribute("year", year);
        model.addAttribute("month", month);
    }
    @GetMapping("sub2")
    public void method2(Integer year, Integer month, Model model) {

        List<Mapper05.CusBuy> value = service.customerBuyList(year, month);
        model.addAttribute("buyList", value);
        model.addAttribute("year", year);
        model.addAttribute("month", month);

    }
}
