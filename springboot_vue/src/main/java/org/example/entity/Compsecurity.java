package org.example.entity;

import lombok.Data;

@Data
public class Compsecurity {
    private Integer id;
    private Integer agebelow30;
    private Integer agefrom30to40;
    private Integer agefrom40to50;
    private Integer ageupper50;
    private Integer workagebelow2;
    private Integer workagefrom2to5;
    private Integer workageupper5;
    private Integer breakscore;
    private Integer vehiclenums;
    private Integer vehicleone;
    private Integer vehicletwo;
    private Integer peoplenums;
    private Integer trainnums;
    private Integer traintime;
    private Integer saftymoney;
    private Integer drivekilometer;
    private Integer accident;
    private Integer deathnum;
    private Integer hurtnum;
    private Integer pitfall;
}
