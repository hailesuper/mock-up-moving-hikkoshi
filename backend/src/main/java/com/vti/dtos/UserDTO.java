package com.vti.dtos;

import com.vti.entities.Order;
import com.vti.entities.Plan;
import com.vti.entities.User;
import com.vti.enums.Role;
import com.vti.enums.UserStatus;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;

@Data
@NoArgsConstructor
public class UserDTO {
    private int id;
    private String email;
    private String phone;
    private String password;
    private String fullName;
    private Role role = Role.CUSTOMER;
    private UserStatus status = UserStatus.NOT_ACTIVE;


    private List<Order> orders;

    @Data
    @NoArgsConstructor
    static class OrderDto {
        private int id;
        private String currentCity;
        private String newCity;
        private LocalDate movingDate;
        private Plan plan;
        private User customer;
        private int isHasApartmentAlready;
        private int distance;
        private int payment_status;
        private String payment_details;
        private LocalDate payment_date;
        private String status;
        private LocalDate created_date;

    }
}
