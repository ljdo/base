package com.hy.common;

import java.io.Serializable;
import java.util.List;

/**
 * Created by 2507868527@qq.com on 2016/3/25 14:28 .
 */
public class TableModel<T> implements Serializable{
    private Integer draw;
    private Integer recordsTotal;
    private Integer recordsFiltered;
    private List<T> data;

   /* {
            "draw": 6,
            "recordsTotal": 57,
            "recordsFiltered": 57,
            "data": [
        [
        "Airi",
                "Satou",
                "Accountant",
                "Tokyo",
                "2008/11/28",
                162700
        ],
        [
        "Angelica",
                "Ramos",
                "Chief Executive Officer (CEO)",
                "London",
                "2009/10/09",
                1200000
        ],
        [
        "Ashton",
                "Cox",
                "Junior Technical Author",
                "San Francisco",
                "2009/01/12",
                86000
        ],
        [
        "Bradley",
                "Greer",
                "Software Engineer",
                "London",
                "2012/10/13",
                132000
        ],
        [
        "Brenden",
                "Wagner",
                "Software Engineer",
                "San Francisco",
                "2011/06/07",
                206850
        ],
        [
        "Brielle",
                "Williamson",
                "Integration Specialist",
                "New York",
                "2012/12/02",
                372000
        ],
        [
        "Bruno",
                "Nash",
                "Software Engineer",
                "London",
                "2011/05/03",
                163500
        ],
        [
        "Caesar",
                "Vance",
                "Pre-Sales Support",
                "New York",
                "2011/12/12",
                106450
        ],
        [
        "Cara",
                "Stevens",
                "Sales Assistant",
                "New York",
                "2011/12/06",
                145600
        ],
        [
        "Cedric",
                "Kelly",
                "Senior Javascript Developer",
                "Edinburgh",
                "2012/03/29",
                433060
        ]
        ]
    }*/
}
