package com.study.mapper;

import lombok.Data;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface Mapper05 {

    @Data
    static class EmployeeIncome {
        private Integer employeeId;
        private String lastName;
        private String firstName;
        private Double income;
    }
    @Data
    static class CusBuy {
        private Integer customerId;
        private String customerName;
        private Double buy;
    }

    @Select("""
            SELECT e.EmployeeId,
                   e.LastName,
                   e.FirstName,
                   SUM(od.Quantity * p.Price) AS income
            FROM Orders o JOIN Employees e ON o.EmployeeId = e.EmployeeId
                          JOIN OrderDetails od ON o.OrderId = od.OrderId
                          JOIN Products p ON od.ProductId = p.ProductId
            WHERE o.OrderDate BETWEEN #{from} AND #{to}
            GROUP BY e.EmployeeId
            ORDER BY income DESC
            """)
    List<EmployeeIncome> selectIncomeList(String from, String to);

    @Select("""
            SELECT c.CustomerID,
                   c.CustomerName,
                   SUM(od.Quantity * p.Price) AS buy
            FROM Customers c 
                JOIN Orders o ON c.CustomerID = o.CustomerID
                JOIN OrderDetails od ON o.OrderID = od.OrderID
                JOIN Products p ON od.ProductID = p. ProductID
            WHERE o.OrderDate BETWEEN #{from} AND #{to}
            GROUP BY c.CustomerID
            ORDER BY buy DESC 
            """)
    List<CusBuy> selectBuyList(String from, String to);
}
