DOMAIN TRIP_PLANNING {

	TEMPORAL_MODULE tm = [0, 495], 1000;

	COMP_TYPE SingletonStateVariable PlanningDecisionType(Idle(), MakeVisitDecision()) {

		VALUE Idle() [1, +INF]
		MEETS {
			MakeVisitDecision();
		}
		VALUE MakeVisitDecision() [1, +INF]
		MEETS {
			Idle();
		}

	}

	COMP_TYPE SingletonStateVariable TripPathType(
		Home(), Finish(), 
		 Visit_POI_19(), Move_Home_POI_19(), Move_POI_19_POI_18(), Move_POI_19_POI_17(), Move_POI_19_POI_16(), Move_POI_19_POI_15(), Move_POI_19_POI_14(), Move_POI_19_POI_9(), Move_POI_19_POI_13(), Move_POI_19_POI_12(), Move_POI_19_POI_11(), Move_POI_19_POI_10(), Move_POI_19_POI_5(), Move_POI_19_POI_6(), Move_POI_19_POI_7(), Move_POI_19_POI_8(), Move_POI_19_POI_1(), Move_POI_19_POI_2(), Move_POI_19_POI_3(), Move_POI_19_POI_4(), Move_POI_19_POI_0(), 
		 Visit_POI_18(), Move_Home_POI_18(), Move_POI_18_POI_19(), Move_POI_18_POI_17(), Move_POI_18_POI_16(), Move_POI_18_POI_15(), Move_POI_18_POI_14(), Move_POI_18_POI_9(), Move_POI_18_POI_13(), Move_POI_18_POI_12(), Move_POI_18_POI_11(), Move_POI_18_POI_10(), Move_POI_18_POI_5(), Move_POI_18_POI_6(), Move_POI_18_POI_7(), Move_POI_18_POI_8(), Move_POI_18_POI_1(), Move_POI_18_POI_2(), Move_POI_18_POI_3(), Move_POI_18_POI_4(), Move_POI_18_POI_0(), 
		 Visit_POI_17(), Move_Home_POI_17(), Move_POI_17_POI_19(), Move_POI_17_POI_18(), Move_POI_17_POI_16(), Move_POI_17_POI_15(), Move_POI_17_POI_14(), Move_POI_17_POI_9(), Move_POI_17_POI_13(), Move_POI_17_POI_12(), Move_POI_17_POI_11(), Move_POI_17_POI_10(), Move_POI_17_POI_5(), Move_POI_17_POI_6(), Move_POI_17_POI_7(), Move_POI_17_POI_8(), Move_POI_17_POI_1(), Move_POI_17_POI_2(), Move_POI_17_POI_3(), Move_POI_17_POI_4(), Move_POI_17_POI_0(), 
		 Visit_POI_16(), Move_Home_POI_16(), Move_POI_16_POI_19(), Move_POI_16_POI_18(), Move_POI_16_POI_17(), Move_POI_16_POI_15(), Move_POI_16_POI_14(), Move_POI_16_POI_9(), Move_POI_16_POI_13(), Move_POI_16_POI_12(), Move_POI_16_POI_11(), Move_POI_16_POI_10(), Move_POI_16_POI_5(), Move_POI_16_POI_6(), Move_POI_16_POI_7(), Move_POI_16_POI_8(), Move_POI_16_POI_1(), Move_POI_16_POI_2(), Move_POI_16_POI_3(), Move_POI_16_POI_4(), Move_POI_16_POI_0(), 
		 Visit_POI_15(), Move_Home_POI_15(), Move_POI_15_POI_19(), Move_POI_15_POI_18(), Move_POI_15_POI_17(), Move_POI_15_POI_16(), Move_POI_15_POI_14(), Move_POI_15_POI_9(), Move_POI_15_POI_13(), Move_POI_15_POI_12(), Move_POI_15_POI_11(), Move_POI_15_POI_10(), Move_POI_15_POI_5(), Move_POI_15_POI_6(), Move_POI_15_POI_7(), Move_POI_15_POI_8(), Move_POI_15_POI_1(), Move_POI_15_POI_2(), Move_POI_15_POI_3(), Move_POI_15_POI_4(), Move_POI_15_POI_0(), 
		 Visit_POI_14(), Move_Home_POI_14(), Move_POI_14_POI_19(), Move_POI_14_POI_18(), Move_POI_14_POI_17(), Move_POI_14_POI_16(), Move_POI_14_POI_15(), Move_POI_14_POI_9(), Move_POI_14_POI_13(), Move_POI_14_POI_12(), Move_POI_14_POI_11(), Move_POI_14_POI_10(), Move_POI_14_POI_5(), Move_POI_14_POI_6(), Move_POI_14_POI_7(), Move_POI_14_POI_8(), Move_POI_14_POI_1(), Move_POI_14_POI_2(), Move_POI_14_POI_3(), Move_POI_14_POI_4(), Move_POI_14_POI_0(), 
		 Visit_POI_9(), Move_Home_POI_9(), Move_POI_9_POI_19(), Move_POI_9_POI_18(), Move_POI_9_POI_17(), Move_POI_9_POI_16(), Move_POI_9_POI_15(), Move_POI_9_POI_14(), Move_POI_9_POI_13(), Move_POI_9_POI_12(), Move_POI_9_POI_11(), Move_POI_9_POI_10(), Move_POI_9_POI_5(), Move_POI_9_POI_6(), Move_POI_9_POI_7(), Move_POI_9_POI_8(), Move_POI_9_POI_1(), Move_POI_9_POI_2(), Move_POI_9_POI_3(), Move_POI_9_POI_4(), Move_POI_9_POI_0(), 
		 Visit_POI_13(), Move_Home_POI_13(), Move_POI_13_POI_19(), Move_POI_13_POI_18(), Move_POI_13_POI_17(), Move_POI_13_POI_16(), Move_POI_13_POI_15(), Move_POI_13_POI_14(), Move_POI_13_POI_9(), Move_POI_13_POI_12(), Move_POI_13_POI_11(), Move_POI_13_POI_10(), Move_POI_13_POI_5(), Move_POI_13_POI_6(), Move_POI_13_POI_7(), Move_POI_13_POI_8(), Move_POI_13_POI_1(), Move_POI_13_POI_2(), Move_POI_13_POI_3(), Move_POI_13_POI_4(), Move_POI_13_POI_0(), 
		 Visit_POI_12(), Move_Home_POI_12(), Move_POI_12_POI_19(), Move_POI_12_POI_18(), Move_POI_12_POI_17(), Move_POI_12_POI_16(), Move_POI_12_POI_15(), Move_POI_12_POI_14(), Move_POI_12_POI_9(), Move_POI_12_POI_13(), Move_POI_12_POI_11(), Move_POI_12_POI_10(), Move_POI_12_POI_5(), Move_POI_12_POI_6(), Move_POI_12_POI_7(), Move_POI_12_POI_8(), Move_POI_12_POI_1(), Move_POI_12_POI_2(), Move_POI_12_POI_3(), Move_POI_12_POI_4(), Move_POI_12_POI_0(), 
		 Visit_POI_11(), Move_Home_POI_11(), Move_POI_11_POI_19(), Move_POI_11_POI_18(), Move_POI_11_POI_17(), Move_POI_11_POI_16(), Move_POI_11_POI_15(), Move_POI_11_POI_14(), Move_POI_11_POI_9(), Move_POI_11_POI_13(), Move_POI_11_POI_12(), Move_POI_11_POI_10(), Move_POI_11_POI_5(), Move_POI_11_POI_6(), Move_POI_11_POI_7(), Move_POI_11_POI_8(), Move_POI_11_POI_1(), Move_POI_11_POI_2(), Move_POI_11_POI_3(), Move_POI_11_POI_4(), Move_POI_11_POI_0(), 
		 Visit_POI_10(), Move_Home_POI_10(), Move_POI_10_POI_19(), Move_POI_10_POI_18(), Move_POI_10_POI_17(), Move_POI_10_POI_16(), Move_POI_10_POI_15(), Move_POI_10_POI_14(), Move_POI_10_POI_9(), Move_POI_10_POI_13(), Move_POI_10_POI_12(), Move_POI_10_POI_11(), Move_POI_10_POI_5(), Move_POI_10_POI_6(), Move_POI_10_POI_7(), Move_POI_10_POI_8(), Move_POI_10_POI_1(), Move_POI_10_POI_2(), Move_POI_10_POI_3(), Move_POI_10_POI_4(), Move_POI_10_POI_0(), 
		 Visit_POI_5(), Move_Home_POI_5(), Move_POI_5_POI_19(), Move_POI_5_POI_18(), Move_POI_5_POI_17(), Move_POI_5_POI_16(), Move_POI_5_POI_15(), Move_POI_5_POI_14(), Move_POI_5_POI_9(), Move_POI_5_POI_13(), Move_POI_5_POI_12(), Move_POI_5_POI_11(), Move_POI_5_POI_10(), Move_POI_5_POI_6(), Move_POI_5_POI_7(), Move_POI_5_POI_8(), Move_POI_5_POI_1(), Move_POI_5_POI_2(), Move_POI_5_POI_3(), Move_POI_5_POI_4(), Move_POI_5_POI_0(), 
		 Visit_POI_6(), Move_Home_POI_6(), Move_POI_6_POI_19(), Move_POI_6_POI_18(), Move_POI_6_POI_17(), Move_POI_6_POI_16(), Move_POI_6_POI_15(), Move_POI_6_POI_14(), Move_POI_6_POI_9(), Move_POI_6_POI_13(), Move_POI_6_POI_12(), Move_POI_6_POI_11(), Move_POI_6_POI_10(), Move_POI_6_POI_5(), Move_POI_6_POI_7(), Move_POI_6_POI_8(), Move_POI_6_POI_1(), Move_POI_6_POI_2(), Move_POI_6_POI_3(), Move_POI_6_POI_4(), Move_POI_6_POI_0(), 
		 Visit_POI_7(), Move_Home_POI_7(), Move_POI_7_POI_19(), Move_POI_7_POI_18(), Move_POI_7_POI_17(), Move_POI_7_POI_16(), Move_POI_7_POI_15(), Move_POI_7_POI_14(), Move_POI_7_POI_9(), Move_POI_7_POI_13(), Move_POI_7_POI_12(), Move_POI_7_POI_11(), Move_POI_7_POI_10(), Move_POI_7_POI_5(), Move_POI_7_POI_6(), Move_POI_7_POI_8(), Move_POI_7_POI_1(), Move_POI_7_POI_2(), Move_POI_7_POI_3(), Move_POI_7_POI_4(), Move_POI_7_POI_0(), 
		 Visit_POI_8(), Move_Home_POI_8(), Move_POI_8_POI_19(), Move_POI_8_POI_18(), Move_POI_8_POI_17(), Move_POI_8_POI_16(), Move_POI_8_POI_15(), Move_POI_8_POI_14(), Move_POI_8_POI_9(), Move_POI_8_POI_13(), Move_POI_8_POI_12(), Move_POI_8_POI_11(), Move_POI_8_POI_10(), Move_POI_8_POI_5(), Move_POI_8_POI_6(), Move_POI_8_POI_7(), Move_POI_8_POI_1(), Move_POI_8_POI_2(), Move_POI_8_POI_3(), Move_POI_8_POI_4(), Move_POI_8_POI_0(), 
		 Visit_POI_1(), Move_Home_POI_1(), Move_POI_1_POI_19(), Move_POI_1_POI_18(), Move_POI_1_POI_17(), Move_POI_1_POI_16(), Move_POI_1_POI_15(), Move_POI_1_POI_14(), Move_POI_1_POI_9(), Move_POI_1_POI_13(), Move_POI_1_POI_12(), Move_POI_1_POI_11(), Move_POI_1_POI_10(), Move_POI_1_POI_5(), Move_POI_1_POI_6(), Move_POI_1_POI_7(), Move_POI_1_POI_8(), Move_POI_1_POI_2(), Move_POI_1_POI_3(), Move_POI_1_POI_4(), Move_POI_1_POI_0(), 
		 Visit_POI_2(), Move_Home_POI_2(), Move_POI_2_POI_19(), Move_POI_2_POI_18(), Move_POI_2_POI_17(), Move_POI_2_POI_16(), Move_POI_2_POI_15(), Move_POI_2_POI_14(), Move_POI_2_POI_9(), Move_POI_2_POI_13(), Move_POI_2_POI_12(), Move_POI_2_POI_11(), Move_POI_2_POI_10(), Move_POI_2_POI_5(), Move_POI_2_POI_6(), Move_POI_2_POI_7(), Move_POI_2_POI_8(), Move_POI_2_POI_1(), Move_POI_2_POI_3(), Move_POI_2_POI_4(), Move_POI_2_POI_0(), 
		 Visit_POI_3(), Move_Home_POI_3(), Move_POI_3_POI_19(), Move_POI_3_POI_18(), Move_POI_3_POI_17(), Move_POI_3_POI_16(), Move_POI_3_POI_15(), Move_POI_3_POI_14(), Move_POI_3_POI_9(), Move_POI_3_POI_13(), Move_POI_3_POI_12(), Move_POI_3_POI_11(), Move_POI_3_POI_10(), Move_POI_3_POI_5(), Move_POI_3_POI_6(), Move_POI_3_POI_7(), Move_POI_3_POI_8(), Move_POI_3_POI_1(), Move_POI_3_POI_2(), Move_POI_3_POI_4(), Move_POI_3_POI_0(), 
		 Visit_POI_4(), Move_Home_POI_4(), Move_POI_4_POI_19(), Move_POI_4_POI_18(), Move_POI_4_POI_17(), Move_POI_4_POI_16(), Move_POI_4_POI_15(), Move_POI_4_POI_14(), Move_POI_4_POI_9(), Move_POI_4_POI_13(), Move_POI_4_POI_12(), Move_POI_4_POI_11(), Move_POI_4_POI_10(), Move_POI_4_POI_5(), Move_POI_4_POI_6(), Move_POI_4_POI_7(), Move_POI_4_POI_8(), Move_POI_4_POI_1(), Move_POI_4_POI_2(), Move_POI_4_POI_3(), Move_POI_4_POI_0(), 
		 Visit_POI_0(), Move_Home_POI_0(), Move_POI_0_POI_19(), Move_POI_0_POI_18(), Move_POI_0_POI_17(), Move_POI_0_POI_16(), Move_POI_0_POI_15(), Move_POI_0_POI_14(), Move_POI_0_POI_9(), Move_POI_0_POI_13(), Move_POI_0_POI_12(), Move_POI_0_POI_11(), Move_POI_0_POI_10(), Move_POI_0_POI_5(), Move_POI_0_POI_6(), Move_POI_0_POI_7(), Move_POI_0_POI_8(), Move_POI_0_POI_1(), Move_POI_0_POI_2(), Move_POI_0_POI_3(), Move_POI_0_POI_4(), 
	) {

		VALUE Home() [1, 1]
		MEETS {
			Move_Home_POI_19();
			Move_Home_POI_18();
			Move_Home_POI_17();
			Move_Home_POI_16();
			Move_Home_POI_15();
			Move_Home_POI_14();
			Move_Home_POI_9();
			Move_Home_POI_13();
			Move_Home_POI_12();
			Move_Home_POI_11();
			Move_Home_POI_10();
			Move_Home_POI_5();
			Move_Home_POI_6();
			Move_Home_POI_7();
			Move_Home_POI_8();
			Move_Home_POI_1();
			Move_Home_POI_2();
			Move_Home_POI_3();
			Move_Home_POI_4();
			Move_Home_POI_0();
		}

		VALUE Finish() [1, +INF]
		MEETS {
			Home();
		}

		VALUE Move_Home_POI_19() [2, 2]
		MEETS {
			Visit_POI_19();
		}

		VALUE Move_Home_POI_18() [7, 11]
		MEETS {
			Visit_POI_18();
		}

		VALUE Move_Home_POI_17() [4, 6]
		MEETS {
			Visit_POI_17();
		}

		VALUE Move_Home_POI_16() [7, 11]
		MEETS {
			Visit_POI_16();
		}

		VALUE Move_Home_POI_15() [6, 8]
		MEETS {
			Visit_POI_15();
		}

		VALUE Move_Home_POI_14() [5, 7]
		MEETS {
			Visit_POI_14();
		}

		VALUE Move_Home_POI_9() [6, 10]
		MEETS {
			Visit_POI_9();
		}

		VALUE Move_Home_POI_13() [1, 1]
		MEETS {
			Visit_POI_13();
		}

		VALUE Move_Home_POI_12() [1, 1]
		MEETS {
			Visit_POI_12();
		}

		VALUE Move_Home_POI_11() [1, 1]
		MEETS {
			Visit_POI_11();
		}

		VALUE Move_Home_POI_10() [7, 11]
		MEETS {
			Visit_POI_10();
		}

		VALUE Move_Home_POI_5() [6, 10]
		MEETS {
			Visit_POI_5();
		}

		VALUE Move_Home_POI_6() [6, 10]
		MEETS {
			Visit_POI_6();
		}

		VALUE Move_Home_POI_7() [6, 10]
		MEETS {
			Visit_POI_7();
		}

		VALUE Move_Home_POI_8() [5, 7]
		MEETS {
			Visit_POI_8();
		}

		VALUE Move_Home_POI_1() [2, 4]
		MEETS {
			Visit_POI_1();
		}

		VALUE Move_Home_POI_2() [1, 1]
		MEETS {
			Visit_POI_2();
		}

		VALUE Move_Home_POI_3() [2, 4]
		MEETS {
			Visit_POI_3();
		}

		VALUE Move_Home_POI_4() [2, 2]
		MEETS {
			Visit_POI_4();
		}

		VALUE Move_Home_POI_0() [4, 6]
		MEETS {
			Visit_POI_0();
		}

		VALUE Visit_POI_19() [8, 12]
		MEETS {
			Move_POI_19_POI_18();
			Move_POI_19_POI_17();
			Move_POI_19_POI_16();
			Move_POI_19_POI_15();
			Move_POI_19_POI_14();
			Move_POI_19_POI_9();
			Move_POI_19_POI_13();
			Move_POI_19_POI_12();
			Move_POI_19_POI_11();
			Move_POI_19_POI_10();
			Move_POI_19_POI_5();
			Move_POI_19_POI_6();
			Move_POI_19_POI_7();
			Move_POI_19_POI_8();
			Move_POI_19_POI_1();
			Move_POI_19_POI_2();
			Move_POI_19_POI_3();
			Move_POI_19_POI_4();
			Move_POI_19_POI_0();
			Finish();
		}

		VALUE Move_POI_19_POI_18() [2, 4]
		MEETS {
			Visit_POI_18();
		}

		VALUE Move_POI_19_POI_17() [2, 2]
		MEETS {
			Visit_POI_17();
		}

		VALUE Move_POI_19_POI_16() [1, 1]
		MEETS {
			Visit_POI_16();
		}

		VALUE Move_POI_19_POI_15() [7, 11]
		MEETS {
			Visit_POI_15();
		}

		VALUE Move_POI_19_POI_14() [3, 5]
		MEETS {
			Visit_POI_14();
		}

		VALUE Move_POI_19_POI_9() [4, 6]
		MEETS {
			Visit_POI_9();
		}

		VALUE Move_POI_19_POI_13() [6, 10]
		MEETS {
			Visit_POI_13();
		}

		VALUE Move_POI_19_POI_12() [6, 8]
		MEETS {
			Visit_POI_12();
		}

		VALUE Move_POI_19_POI_11() [6, 8]
		MEETS {
			Visit_POI_11();
		}

		VALUE Move_POI_19_POI_10() [1, 1]
		MEETS {
			Visit_POI_10();
		}

		VALUE Move_POI_19_POI_5() [6, 8]
		MEETS {
			Visit_POI_5();
		}

		VALUE Move_POI_19_POI_6() [3, 5]
		MEETS {
			Visit_POI_6();
		}

		VALUE Move_POI_19_POI_7() [5, 7]
		MEETS {
			Visit_POI_7();
		}

		VALUE Move_POI_19_POI_8() [5, 7]
		MEETS {
			Visit_POI_8();
		}

		VALUE Move_POI_19_POI_1() [4, 6]
		MEETS {
			Visit_POI_1();
		}

		VALUE Move_POI_19_POI_2() [2, 2]
		MEETS {
			Visit_POI_2();
		}

		VALUE Move_POI_19_POI_3() [4, 6]
		MEETS {
			Visit_POI_3();
		}

		VALUE Move_POI_19_POI_4() [2, 2]
		MEETS {
			Visit_POI_4();
		}

		VALUE Move_POI_19_POI_0() [6, 8]
		MEETS {
			Visit_POI_0();
		}

		VALUE Visit_POI_18() [24, 36]
		MEETS {
			Move_POI_18_POI_19();
			Move_POI_18_POI_17();
			Move_POI_18_POI_16();
			Move_POI_18_POI_15();
			Move_POI_18_POI_14();
			Move_POI_18_POI_9();
			Move_POI_18_POI_13();
			Move_POI_18_POI_12();
			Move_POI_18_POI_11();
			Move_POI_18_POI_10();
			Move_POI_18_POI_5();
			Move_POI_18_POI_6();
			Move_POI_18_POI_7();
			Move_POI_18_POI_8();
			Move_POI_18_POI_1();
			Move_POI_18_POI_2();
			Move_POI_18_POI_3();
			Move_POI_18_POI_4();
			Move_POI_18_POI_0();
			Finish();
		}

		VALUE Move_POI_18_POI_19() [1, 1]
		MEETS {
			Visit_POI_19();
		}

		VALUE Move_POI_18_POI_17() [1, 1]
		MEETS {
			Visit_POI_17();
		}

		VALUE Move_POI_18_POI_16() [2, 4]
		MEETS {
			Visit_POI_16();
		}

		VALUE Move_POI_18_POI_15() [6, 8]
		MEETS {
			Visit_POI_15();
		}

		VALUE Move_POI_18_POI_14() [5, 7]
		MEETS {
			Visit_POI_14();
		}

		VALUE Move_POI_18_POI_9() [7, 11]
		MEETS {
			Visit_POI_9();
		}

		VALUE Move_POI_18_POI_13() [3, 5]
		MEETS {
			Visit_POI_13();
		}

		VALUE Move_POI_18_POI_12() [2, 4]
		MEETS {
			Visit_POI_12();
		}

		VALUE Move_POI_18_POI_11() [6, 10]
		MEETS {
			Visit_POI_11();
		}

		VALUE Move_POI_18_POI_10() [5, 7]
		MEETS {
			Visit_POI_10();
		}

		VALUE Move_POI_18_POI_5() [2, 2]
		MEETS {
			Visit_POI_5();
		}

		VALUE Move_POI_18_POI_6() [3, 5]
		MEETS {
			Visit_POI_6();
		}

		VALUE Move_POI_18_POI_7() [2, 4]
		MEETS {
			Visit_POI_7();
		}

		VALUE Move_POI_18_POI_8() [2, 4]
		MEETS {
			Visit_POI_8();
		}

		VALUE Move_POI_18_POI_1() [2, 4]
		MEETS {
			Visit_POI_1();
		}

		VALUE Move_POI_18_POI_2() [6, 10]
		MEETS {
			Visit_POI_2();
		}

		VALUE Move_POI_18_POI_3() [1, 1]
		MEETS {
			Visit_POI_3();
		}

		VALUE Move_POI_18_POI_4() [4, 6]
		MEETS {
			Visit_POI_4();
		}

		VALUE Move_POI_18_POI_0() [6, 8]
		MEETS {
			Visit_POI_0();
		}

		VALUE Visit_POI_17() [24, 36]
		MEETS {
			Move_POI_17_POI_19();
			Move_POI_17_POI_18();
			Move_POI_17_POI_16();
			Move_POI_17_POI_15();
			Move_POI_17_POI_14();
			Move_POI_17_POI_9();
			Move_POI_17_POI_13();
			Move_POI_17_POI_12();
			Move_POI_17_POI_11();
			Move_POI_17_POI_10();
			Move_POI_17_POI_5();
			Move_POI_17_POI_6();
			Move_POI_17_POI_7();
			Move_POI_17_POI_8();
			Move_POI_17_POI_1();
			Move_POI_17_POI_2();
			Move_POI_17_POI_3();
			Move_POI_17_POI_4();
			Move_POI_17_POI_0();
			Finish();
		}

		VALUE Move_POI_17_POI_19() [6, 10]
		MEETS {
			Visit_POI_19();
		}

		VALUE Move_POI_17_POI_18() [1, 1]
		MEETS {
			Visit_POI_18();
		}

		VALUE Move_POI_17_POI_16() [2, 4]
		MEETS {
			Visit_POI_16();
		}

		VALUE Move_POI_17_POI_15() [7, 11]
		MEETS {
			Visit_POI_15();
		}

		VALUE Move_POI_17_POI_14() [6, 10]
		MEETS {
			Visit_POI_14();
		}

		VALUE Move_POI_17_POI_9() [7, 11]
		MEETS {
			Visit_POI_9();
		}

		VALUE Move_POI_17_POI_13() [5, 7]
		MEETS {
			Visit_POI_13();
		}

		VALUE Move_POI_17_POI_12() [6, 8]
		MEETS {
			Visit_POI_12();
		}

		VALUE Move_POI_17_POI_11() [4, 6]
		MEETS {
			Visit_POI_11();
		}

		VALUE Move_POI_17_POI_10() [6, 10]
		MEETS {
			Visit_POI_10();
		}

		VALUE Move_POI_17_POI_5() [4, 6]
		MEETS {
			Visit_POI_5();
		}

		VALUE Move_POI_17_POI_6() [2, 2]
		MEETS {
			Visit_POI_6();
		}

		VALUE Move_POI_17_POI_7() [6, 8]
		MEETS {
			Visit_POI_7();
		}

		VALUE Move_POI_17_POI_8() [4, 6]
		MEETS {
			Visit_POI_8();
		}

		VALUE Move_POI_17_POI_1() [2, 4]
		MEETS {
			Visit_POI_1();
		}

		VALUE Move_POI_17_POI_2() [6, 10]
		MEETS {
			Visit_POI_2();
		}

		VALUE Move_POI_17_POI_3() [2, 2]
		MEETS {
			Visit_POI_3();
		}

		VALUE Move_POI_17_POI_4() [6, 8]
		MEETS {
			Visit_POI_4();
		}

		VALUE Move_POI_17_POI_0() [1, 1]
		MEETS {
			Visit_POI_0();
		}

		VALUE Visit_POI_16() [12, 18]
		MEETS {
			Move_POI_16_POI_19();
			Move_POI_16_POI_18();
			Move_POI_16_POI_17();
			Move_POI_16_POI_15();
			Move_POI_16_POI_14();
			Move_POI_16_POI_9();
			Move_POI_16_POI_13();
			Move_POI_16_POI_12();
			Move_POI_16_POI_11();
			Move_POI_16_POI_10();
			Move_POI_16_POI_5();
			Move_POI_16_POI_6();
			Move_POI_16_POI_7();
			Move_POI_16_POI_8();
			Move_POI_16_POI_1();
			Move_POI_16_POI_2();
			Move_POI_16_POI_3();
			Move_POI_16_POI_4();
			Move_POI_16_POI_0();
			Finish();
		}

		VALUE Move_POI_16_POI_19() [2, 2]
		MEETS {
			Visit_POI_19();
		}

		VALUE Move_POI_16_POI_18() [2, 2]
		MEETS {
			Visit_POI_18();
		}

		VALUE Move_POI_16_POI_17() [6, 8]
		MEETS {
			Visit_POI_17();
		}

		VALUE Move_POI_16_POI_15() [2, 2]
		MEETS {
			Visit_POI_15();
		}

		VALUE Move_POI_16_POI_14() [3, 5]
		MEETS {
			Visit_POI_14();
		}

		VALUE Move_POI_16_POI_9() [4, 6]
		MEETS {
			Visit_POI_9();
		}

		VALUE Move_POI_16_POI_13() [2, 2]
		MEETS {
			Visit_POI_13();
		}

		VALUE Move_POI_16_POI_12() [5, 7]
		MEETS {
			Visit_POI_12();
		}

		VALUE Move_POI_16_POI_11() [6, 10]
		MEETS {
			Visit_POI_11();
		}

		VALUE Move_POI_16_POI_10() [2, 2]
		MEETS {
			Visit_POI_10();
		}

		VALUE Move_POI_16_POI_5() [6, 8]
		MEETS {
			Visit_POI_5();
		}

		VALUE Move_POI_16_POI_6() [2, 2]
		MEETS {
			Visit_POI_6();
		}

		VALUE Move_POI_16_POI_7() [1, 1]
		MEETS {
			Visit_POI_7();
		}

		VALUE Move_POI_16_POI_8() [5, 7]
		MEETS {
			Visit_POI_8();
		}

		VALUE Move_POI_16_POI_1() [6, 8]
		MEETS {
			Visit_POI_1();
		}

		VALUE Move_POI_16_POI_2() [4, 6]
		MEETS {
			Visit_POI_2();
		}

		VALUE Move_POI_16_POI_3() [4, 6]
		MEETS {
			Visit_POI_3();
		}

		VALUE Move_POI_16_POI_4() [1, 1]
		MEETS {
			Visit_POI_4();
		}

		VALUE Move_POI_16_POI_0() [2, 2]
		MEETS {
			Visit_POI_0();
		}

		VALUE Visit_POI_15() [8, 12]
		MEETS {
			Move_POI_15_POI_19();
			Move_POI_15_POI_18();
			Move_POI_15_POI_17();
			Move_POI_15_POI_16();
			Move_POI_15_POI_14();
			Move_POI_15_POI_9();
			Move_POI_15_POI_13();
			Move_POI_15_POI_12();
			Move_POI_15_POI_11();
			Move_POI_15_POI_10();
			Move_POI_15_POI_5();
			Move_POI_15_POI_6();
			Move_POI_15_POI_7();
			Move_POI_15_POI_8();
			Move_POI_15_POI_1();
			Move_POI_15_POI_2();
			Move_POI_15_POI_3();
			Move_POI_15_POI_4();
			Move_POI_15_POI_0();
			Finish();
		}

		VALUE Move_POI_15_POI_19() [3, 5]
		MEETS {
			Visit_POI_19();
		}

		VALUE Move_POI_15_POI_18() [6, 10]
		MEETS {
			Visit_POI_18();
		}

		VALUE Move_POI_15_POI_17() [7, 11]
		MEETS {
			Visit_POI_17();
		}

		VALUE Move_POI_15_POI_16() [3, 5]
		MEETS {
			Visit_POI_16();
		}

		VALUE Move_POI_15_POI_14() [1, 1]
		MEETS {
			Visit_POI_14();
		}

		VALUE Move_POI_15_POI_9() [6, 8]
		MEETS {
			Visit_POI_9();
		}

		VALUE Move_POI_15_POI_13() [4, 6]
		MEETS {
			Visit_POI_13();
		}

		VALUE Move_POI_15_POI_12() [2, 2]
		MEETS {
			Visit_POI_12();
		}

		VALUE Move_POI_15_POI_11() [7, 11]
		MEETS {
			Visit_POI_11();
		}

		VALUE Move_POI_15_POI_10() [3, 5]
		MEETS {
			Visit_POI_10();
		}

		VALUE Move_POI_15_POI_5() [6, 10]
		MEETS {
			Visit_POI_5();
		}

		VALUE Move_POI_15_POI_6() [6, 10]
		MEETS {
			Visit_POI_6();
		}

		VALUE Move_POI_15_POI_7() [3, 5]
		MEETS {
			Visit_POI_7();
		}

		VALUE Move_POI_15_POI_8() [3, 5]
		MEETS {
			Visit_POI_8();
		}

		VALUE Move_POI_15_POI_1() [4, 6]
		MEETS {
			Visit_POI_1();
		}

		VALUE Move_POI_15_POI_2() [2, 4]
		MEETS {
			Visit_POI_2();
		}

		VALUE Move_POI_15_POI_3() [3, 5]
		MEETS {
			Visit_POI_3();
		}

		VALUE Move_POI_15_POI_4() [6, 8]
		MEETS {
			Visit_POI_4();
		}

		VALUE Move_POI_15_POI_0() [4, 6]
		MEETS {
			Visit_POI_0();
		}

		VALUE Visit_POI_14() [8, 12]
		MEETS {
			Move_POI_14_POI_19();
			Move_POI_14_POI_18();
			Move_POI_14_POI_17();
			Move_POI_14_POI_16();
			Move_POI_14_POI_15();
			Move_POI_14_POI_9();
			Move_POI_14_POI_13();
			Move_POI_14_POI_12();
			Move_POI_14_POI_11();
			Move_POI_14_POI_10();
			Move_POI_14_POI_5();
			Move_POI_14_POI_6();
			Move_POI_14_POI_7();
			Move_POI_14_POI_8();
			Move_POI_14_POI_1();
			Move_POI_14_POI_2();
			Move_POI_14_POI_3();
			Move_POI_14_POI_4();
			Move_POI_14_POI_0();
			Finish();
		}

		VALUE Move_POI_14_POI_19() [6, 8]
		MEETS {
			Visit_POI_19();
		}

		VALUE Move_POI_14_POI_18() [4, 6]
		MEETS {
			Visit_POI_18();
		}

		VALUE Move_POI_14_POI_17() [1, 1]
		MEETS {
			Visit_POI_17();
		}

		VALUE Move_POI_14_POI_16() [6, 8]
		MEETS {
			Visit_POI_16();
		}

		VALUE Move_POI_14_POI_15() [2, 2]
		MEETS {
			Visit_POI_15();
		}

		VALUE Move_POI_14_POI_9() [1, 1]
		MEETS {
			Visit_POI_9();
		}

		VALUE Move_POI_14_POI_13() [3, 5]
		MEETS {
			Visit_POI_13();
		}

		VALUE Move_POI_14_POI_12() [7, 11]
		MEETS {
			Visit_POI_12();
		}

		VALUE Move_POI_14_POI_11() [3, 5]
		MEETS {
			Visit_POI_11();
		}

		VALUE Move_POI_14_POI_10() [2, 2]
		MEETS {
			Visit_POI_10();
		}

		VALUE Move_POI_14_POI_5() [2, 2]
		MEETS {
			Visit_POI_5();
		}

		VALUE Move_POI_14_POI_6() [6, 8]
		MEETS {
			Visit_POI_6();
		}

		VALUE Move_POI_14_POI_7() [1, 1]
		MEETS {
			Visit_POI_7();
		}

		VALUE Move_POI_14_POI_8() [3, 5]
		MEETS {
			Visit_POI_8();
		}

		VALUE Move_POI_14_POI_1() [4, 6]
		MEETS {
			Visit_POI_1();
		}

		VALUE Move_POI_14_POI_2() [3, 5]
		MEETS {
			Visit_POI_2();
		}

		VALUE Move_POI_14_POI_3() [4, 6]
		MEETS {
			Visit_POI_3();
		}

		VALUE Move_POI_14_POI_4() [6, 10]
		MEETS {
			Visit_POI_4();
		}

		VALUE Move_POI_14_POI_0() [6, 8]
		MEETS {
			Visit_POI_0();
		}

		VALUE Visit_POI_9() [8, 12]
		MEETS {
			Move_POI_9_POI_19();
			Move_POI_9_POI_18();
			Move_POI_9_POI_17();
			Move_POI_9_POI_16();
			Move_POI_9_POI_15();
			Move_POI_9_POI_14();
			Move_POI_9_POI_13();
			Move_POI_9_POI_12();
			Move_POI_9_POI_11();
			Move_POI_9_POI_10();
			Move_POI_9_POI_5();
			Move_POI_9_POI_6();
			Move_POI_9_POI_7();
			Move_POI_9_POI_8();
			Move_POI_9_POI_1();
			Move_POI_9_POI_2();
			Move_POI_9_POI_3();
			Move_POI_9_POI_4();
			Move_POI_9_POI_0();
			Finish();
		}

		VALUE Move_POI_9_POI_19() [2, 2]
		MEETS {
			Visit_POI_19();
		}

		VALUE Move_POI_9_POI_18() [6, 8]
		MEETS {
			Visit_POI_18();
		}

		VALUE Move_POI_9_POI_17() [2, 2]
		MEETS {
			Visit_POI_17();
		}

		VALUE Move_POI_9_POI_16() [4, 6]
		MEETS {
			Visit_POI_16();
		}

		VALUE Move_POI_9_POI_15() [5, 7]
		MEETS {
			Visit_POI_15();
		}

		VALUE Move_POI_9_POI_14() [6, 10]
		MEETS {
			Visit_POI_14();
		}

		VALUE Move_POI_9_POI_13() [1, 1]
		MEETS {
			Visit_POI_13();
		}

		VALUE Move_POI_9_POI_12() [6, 8]
		MEETS {
			Visit_POI_12();
		}

		VALUE Move_POI_9_POI_11() [6, 8]
		MEETS {
			Visit_POI_11();
		}

		VALUE Move_POI_9_POI_10() [2, 2]
		MEETS {
			Visit_POI_10();
		}

		VALUE Move_POI_9_POI_5() [6, 8]
		MEETS {
			Visit_POI_5();
		}

		VALUE Move_POI_9_POI_6() [1, 1]
		MEETS {
			Visit_POI_6();
		}

		VALUE Move_POI_9_POI_7() [2, 4]
		MEETS {
			Visit_POI_7();
		}

		VALUE Move_POI_9_POI_8() [1, 1]
		MEETS {
			Visit_POI_8();
		}

		VALUE Move_POI_9_POI_1() [7, 11]
		MEETS {
			Visit_POI_1();
		}

		VALUE Move_POI_9_POI_2() [2, 4]
		MEETS {
			Visit_POI_2();
		}

		VALUE Move_POI_9_POI_3() [2, 2]
		MEETS {
			Visit_POI_3();
		}

		VALUE Move_POI_9_POI_4() [1, 1]
		MEETS {
			Visit_POI_4();
		}

		VALUE Move_POI_9_POI_0() [2, 4]
		MEETS {
			Visit_POI_0();
		}

		VALUE Visit_POI_13() [24, 36]
		MEETS {
			Move_POI_13_POI_19();
			Move_POI_13_POI_18();
			Move_POI_13_POI_17();
			Move_POI_13_POI_16();
			Move_POI_13_POI_15();
			Move_POI_13_POI_14();
			Move_POI_13_POI_9();
			Move_POI_13_POI_12();
			Move_POI_13_POI_11();
			Move_POI_13_POI_10();
			Move_POI_13_POI_5();
			Move_POI_13_POI_6();
			Move_POI_13_POI_7();
			Move_POI_13_POI_8();
			Move_POI_13_POI_1();
			Move_POI_13_POI_2();
			Move_POI_13_POI_3();
			Move_POI_13_POI_4();
			Move_POI_13_POI_0();
			Finish();
		}

		VALUE Move_POI_13_POI_19() [7, 11]
		MEETS {
			Visit_POI_19();
		}

		VALUE Move_POI_13_POI_18() [6, 8]
		MEETS {
			Visit_POI_18();
		}

		VALUE Move_POI_13_POI_17() [2, 2]
		MEETS {
			Visit_POI_17();
		}

		VALUE Move_POI_13_POI_16() [4, 6]
		MEETS {
			Visit_POI_16();
		}

		VALUE Move_POI_13_POI_15() [2, 4]
		MEETS {
			Visit_POI_15();
		}

		VALUE Move_POI_13_POI_14() [4, 6]
		MEETS {
			Visit_POI_14();
		}

		VALUE Move_POI_13_POI_9() [1, 1]
		MEETS {
			Visit_POI_9();
		}

		VALUE Move_POI_13_POI_12() [7, 11]
		MEETS {
			Visit_POI_12();
		}

		VALUE Move_POI_13_POI_11() [5, 7]
		MEETS {
			Visit_POI_11();
		}

		VALUE Move_POI_13_POI_10() [4, 6]
		MEETS {
			Visit_POI_10();
		}

		VALUE Move_POI_13_POI_5() [2, 4]
		MEETS {
			Visit_POI_5();
		}

		VALUE Move_POI_13_POI_6() [2, 2]
		MEETS {
			Visit_POI_6();
		}

		VALUE Move_POI_13_POI_7() [6, 10]
		MEETS {
			Visit_POI_7();
		}

		VALUE Move_POI_13_POI_8() [2, 4]
		MEETS {
			Visit_POI_8();
		}

		VALUE Move_POI_13_POI_1() [2, 4]
		MEETS {
			Visit_POI_1();
		}

		VALUE Move_POI_13_POI_2() [3, 5]
		MEETS {
			Visit_POI_2();
		}

		VALUE Move_POI_13_POI_3() [4, 6]
		MEETS {
			Visit_POI_3();
		}

		VALUE Move_POI_13_POI_4() [2, 2]
		MEETS {
			Visit_POI_4();
		}

		VALUE Move_POI_13_POI_0() [1, 1]
		MEETS {
			Visit_POI_0();
		}

		VALUE Visit_POI_12() [24, 36]
		MEETS {
			Move_POI_12_POI_19();
			Move_POI_12_POI_18();
			Move_POI_12_POI_17();
			Move_POI_12_POI_16();
			Move_POI_12_POI_15();
			Move_POI_12_POI_14();
			Move_POI_12_POI_9();
			Move_POI_12_POI_13();
			Move_POI_12_POI_11();
			Move_POI_12_POI_10();
			Move_POI_12_POI_5();
			Move_POI_12_POI_6();
			Move_POI_12_POI_7();
			Move_POI_12_POI_8();
			Move_POI_12_POI_1();
			Move_POI_12_POI_2();
			Move_POI_12_POI_3();
			Move_POI_12_POI_4();
			Move_POI_12_POI_0();
			Finish();
		}

		VALUE Move_POI_12_POI_19() [4, 6]
		MEETS {
			Visit_POI_19();
		}

		VALUE Move_POI_12_POI_18() [2, 4]
		MEETS {
			Visit_POI_18();
		}

		VALUE Move_POI_12_POI_17() [6, 8]
		MEETS {
			Visit_POI_17();
		}

		VALUE Move_POI_12_POI_16() [5, 7]
		MEETS {
			Visit_POI_16();
		}

		VALUE Move_POI_12_POI_15() [2, 4]
		MEETS {
			Visit_POI_15();
		}

		VALUE Move_POI_12_POI_14() [7, 11]
		MEETS {
			Visit_POI_14();
		}

		VALUE Move_POI_12_POI_9() [7, 11]
		MEETS {
			Visit_POI_9();
		}

		VALUE Move_POI_12_POI_13() [4, 6]
		MEETS {
			Visit_POI_13();
		}

		VALUE Move_POI_12_POI_11() [6, 10]
		MEETS {
			Visit_POI_11();
		}

		VALUE Move_POI_12_POI_10() [6, 10]
		MEETS {
			Visit_POI_10();
		}

		VALUE Move_POI_12_POI_5() [6, 10]
		MEETS {
			Visit_POI_5();
		}

		VALUE Move_POI_12_POI_6() [5, 7]
		MEETS {
			Visit_POI_6();
		}

		VALUE Move_POI_12_POI_7() [5, 7]
		MEETS {
			Visit_POI_7();
		}

		VALUE Move_POI_12_POI_8() [6, 8]
		MEETS {
			Visit_POI_8();
		}

		VALUE Move_POI_12_POI_1() [6, 8]
		MEETS {
			Visit_POI_1();
		}

		VALUE Move_POI_12_POI_2() [7, 11]
		MEETS {
			Visit_POI_2();
		}

		VALUE Move_POI_12_POI_3() [3, 5]
		MEETS {
			Visit_POI_3();
		}

		VALUE Move_POI_12_POI_4() [7, 11]
		MEETS {
			Visit_POI_4();
		}

		VALUE Move_POI_12_POI_0() [1, 1]
		MEETS {
			Visit_POI_0();
		}

		VALUE Visit_POI_11() [8, 12]
		MEETS {
			Move_POI_11_POI_19();
			Move_POI_11_POI_18();
			Move_POI_11_POI_17();
			Move_POI_11_POI_16();
			Move_POI_11_POI_15();
			Move_POI_11_POI_14();
			Move_POI_11_POI_9();
			Move_POI_11_POI_13();
			Move_POI_11_POI_12();
			Move_POI_11_POI_10();
			Move_POI_11_POI_5();
			Move_POI_11_POI_6();
			Move_POI_11_POI_7();
			Move_POI_11_POI_8();
			Move_POI_11_POI_1();
			Move_POI_11_POI_2();
			Move_POI_11_POI_3();
			Move_POI_11_POI_4();
			Move_POI_11_POI_0();
			Finish();
		}

		VALUE Move_POI_11_POI_19() [6, 10]
		MEETS {
			Visit_POI_19();
		}

		VALUE Move_POI_11_POI_18() [2, 2]
		MEETS {
			Visit_POI_18();
		}

		VALUE Move_POI_11_POI_17() [6, 8]
		MEETS {
			Visit_POI_17();
		}

		VALUE Move_POI_11_POI_16() [1, 1]
		MEETS {
			Visit_POI_16();
		}

		VALUE Move_POI_11_POI_15() [2, 2]
		MEETS {
			Visit_POI_15();
		}

		VALUE Move_POI_11_POI_14() [4, 6]
		MEETS {
			Visit_POI_14();
		}

		VALUE Move_POI_11_POI_9() [6, 10]
		MEETS {
			Visit_POI_9();
		}

		VALUE Move_POI_11_POI_13() [4, 6]
		MEETS {
			Visit_POI_13();
		}

		VALUE Move_POI_11_POI_12() [2, 4]
		MEETS {
			Visit_POI_12();
		}

		VALUE Move_POI_11_POI_10() [3, 5]
		MEETS {
			Visit_POI_10();
		}

		VALUE Move_POI_11_POI_5() [6, 8]
		MEETS {
			Visit_POI_5();
		}

		VALUE Move_POI_11_POI_6() [2, 2]
		MEETS {
			Visit_POI_6();
		}

		VALUE Move_POI_11_POI_7() [6, 10]
		MEETS {
			Visit_POI_7();
		}

		VALUE Move_POI_11_POI_8() [2, 4]
		MEETS {
			Visit_POI_8();
		}

		VALUE Move_POI_11_POI_1() [6, 10]
		MEETS {
			Visit_POI_1();
		}

		VALUE Move_POI_11_POI_2() [6, 8]
		MEETS {
			Visit_POI_2();
		}

		VALUE Move_POI_11_POI_3() [1, 1]
		MEETS {
			Visit_POI_3();
		}

		VALUE Move_POI_11_POI_4() [6, 10]
		MEETS {
			Visit_POI_4();
		}

		VALUE Move_POI_11_POI_0() [6, 8]
		MEETS {
			Visit_POI_0();
		}

		VALUE Visit_POI_10() [24, 36]
		MEETS {
			Move_POI_10_POI_19();
			Move_POI_10_POI_18();
			Move_POI_10_POI_17();
			Move_POI_10_POI_16();
			Move_POI_10_POI_15();
			Move_POI_10_POI_14();
			Move_POI_10_POI_9();
			Move_POI_10_POI_13();
			Move_POI_10_POI_12();
			Move_POI_10_POI_11();
			Move_POI_10_POI_5();
			Move_POI_10_POI_6();
			Move_POI_10_POI_7();
			Move_POI_10_POI_8();
			Move_POI_10_POI_1();
			Move_POI_10_POI_2();
			Move_POI_10_POI_3();
			Move_POI_10_POI_4();
			Move_POI_10_POI_0();
			Finish();
		}

		VALUE Move_POI_10_POI_19() [6, 10]
		MEETS {
			Visit_POI_19();
		}

		VALUE Move_POI_10_POI_18() [4, 6]
		MEETS {
			Visit_POI_18();
		}

		VALUE Move_POI_10_POI_17() [6, 10]
		MEETS {
			Visit_POI_17();
		}

		VALUE Move_POI_10_POI_16() [2, 2]
		MEETS {
			Visit_POI_16();
		}

		VALUE Move_POI_10_POI_15() [2, 2]
		MEETS {
			Visit_POI_15();
		}

		VALUE Move_POI_10_POI_14() [6, 8]
		MEETS {
			Visit_POI_14();
		}

		VALUE Move_POI_10_POI_9() [4, 6]
		MEETS {
			Visit_POI_9();
		}

		VALUE Move_POI_10_POI_13() [6, 8]
		MEETS {
			Visit_POI_13();
		}

		VALUE Move_POI_10_POI_12() [1, 1]
		MEETS {
			Visit_POI_12();
		}

		VALUE Move_POI_10_POI_11() [7, 11]
		MEETS {
			Visit_POI_11();
		}

		VALUE Move_POI_10_POI_5() [7, 11]
		MEETS {
			Visit_POI_5();
		}

		VALUE Move_POI_10_POI_6() [2, 4]
		MEETS {
			Visit_POI_6();
		}

		VALUE Move_POI_10_POI_7() [2, 2]
		MEETS {
			Visit_POI_7();
		}

		VALUE Move_POI_10_POI_8() [2, 2]
		MEETS {
			Visit_POI_8();
		}

		VALUE Move_POI_10_POI_1() [5, 7]
		MEETS {
			Visit_POI_1();
		}

		VALUE Move_POI_10_POI_2() [7, 11]
		MEETS {
			Visit_POI_2();
		}

		VALUE Move_POI_10_POI_3() [2, 4]
		MEETS {
			Visit_POI_3();
		}

		VALUE Move_POI_10_POI_4() [1, 1]
		MEETS {
			Visit_POI_4();
		}

		VALUE Move_POI_10_POI_0() [6, 10]
		MEETS {
			Visit_POI_0();
		}

		VALUE Visit_POI_5() [24, 36]
		MEETS {
			Move_POI_5_POI_19();
			Move_POI_5_POI_18();
			Move_POI_5_POI_17();
			Move_POI_5_POI_16();
			Move_POI_5_POI_15();
			Move_POI_5_POI_14();
			Move_POI_5_POI_9();
			Move_POI_5_POI_13();
			Move_POI_5_POI_12();
			Move_POI_5_POI_11();
			Move_POI_5_POI_10();
			Move_POI_5_POI_6();
			Move_POI_5_POI_7();
			Move_POI_5_POI_8();
			Move_POI_5_POI_1();
			Move_POI_5_POI_2();
			Move_POI_5_POI_3();
			Move_POI_5_POI_4();
			Move_POI_5_POI_0();
			Finish();
		}

		VALUE Move_POI_5_POI_19() [6, 8]
		MEETS {
			Visit_POI_19();
		}

		VALUE Move_POI_5_POI_18() [3, 5]
		MEETS {
			Visit_POI_18();
		}

		VALUE Move_POI_5_POI_17() [1, 1]
		MEETS {
			Visit_POI_17();
		}

		VALUE Move_POI_5_POI_16() [6, 8]
		MEETS {
			Visit_POI_16();
		}

		VALUE Move_POI_5_POI_15() [2, 4]
		MEETS {
			Visit_POI_15();
		}

		VALUE Move_POI_5_POI_14() [2, 4]
		MEETS {
			Visit_POI_14();
		}

		VALUE Move_POI_5_POI_9() [1, 1]
		MEETS {
			Visit_POI_9();
		}

		VALUE Move_POI_5_POI_13() [4, 6]
		MEETS {
			Visit_POI_13();
		}

		VALUE Move_POI_5_POI_12() [2, 4]
		MEETS {
			Visit_POI_12();
		}

		VALUE Move_POI_5_POI_11() [4, 6]
		MEETS {
			Visit_POI_11();
		}

		VALUE Move_POI_5_POI_10() [6, 8]
		MEETS {
			Visit_POI_10();
		}

		VALUE Move_POI_5_POI_6() [2, 2]
		MEETS {
			Visit_POI_6();
		}

		VALUE Move_POI_5_POI_7() [1, 1]
		MEETS {
			Visit_POI_7();
		}

		VALUE Move_POI_5_POI_8() [5, 7]
		MEETS {
			Visit_POI_8();
		}

		VALUE Move_POI_5_POI_1() [2, 2]
		MEETS {
			Visit_POI_1();
		}

		VALUE Move_POI_5_POI_2() [2, 2]
		MEETS {
			Visit_POI_2();
		}

		VALUE Move_POI_5_POI_3() [6, 8]
		MEETS {
			Visit_POI_3();
		}

		VALUE Move_POI_5_POI_4() [2, 2]
		MEETS {
			Visit_POI_4();
		}

		VALUE Move_POI_5_POI_0() [7, 11]
		MEETS {
			Visit_POI_0();
		}

		VALUE Visit_POI_6() [8, 12]
		MEETS {
			Move_POI_6_POI_19();
			Move_POI_6_POI_18();
			Move_POI_6_POI_17();
			Move_POI_6_POI_16();
			Move_POI_6_POI_15();
			Move_POI_6_POI_14();
			Move_POI_6_POI_9();
			Move_POI_6_POI_13();
			Move_POI_6_POI_12();
			Move_POI_6_POI_11();
			Move_POI_6_POI_10();
			Move_POI_6_POI_5();
			Move_POI_6_POI_7();
			Move_POI_6_POI_8();
			Move_POI_6_POI_1();
			Move_POI_6_POI_2();
			Move_POI_6_POI_3();
			Move_POI_6_POI_4();
			Move_POI_6_POI_0();
			Finish();
		}

		VALUE Move_POI_6_POI_19() [3, 5]
		MEETS {
			Visit_POI_19();
		}

		VALUE Move_POI_6_POI_18() [4, 6]
		MEETS {
			Visit_POI_18();
		}

		VALUE Move_POI_6_POI_17() [7, 11]
		MEETS {
			Visit_POI_17();
		}

		VALUE Move_POI_6_POI_16() [6, 10]
		MEETS {
			Visit_POI_16();
		}

		VALUE Move_POI_6_POI_15() [3, 5]
		MEETS {
			Visit_POI_15();
		}

		VALUE Move_POI_6_POI_14() [4, 6]
		MEETS {
			Visit_POI_14();
		}

		VALUE Move_POI_6_POI_9() [1, 1]
		MEETS {
			Visit_POI_9();
		}

		VALUE Move_POI_6_POI_13() [2, 4]
		MEETS {
			Visit_POI_13();
		}

		VALUE Move_POI_6_POI_12() [6, 10]
		MEETS {
			Visit_POI_12();
		}

		VALUE Move_POI_6_POI_11() [4, 6]
		MEETS {
			Visit_POI_11();
		}

		VALUE Move_POI_6_POI_10() [6, 10]
		MEETS {
			Visit_POI_10();
		}

		VALUE Move_POI_6_POI_5() [3, 5]
		MEETS {
			Visit_POI_5();
		}

		VALUE Move_POI_6_POI_7() [5, 7]
		MEETS {
			Visit_POI_7();
		}

		VALUE Move_POI_6_POI_8() [2, 2]
		MEETS {
			Visit_POI_8();
		}

		VALUE Move_POI_6_POI_1() [4, 6]
		MEETS {
			Visit_POI_1();
		}

		VALUE Move_POI_6_POI_2() [7, 11]
		MEETS {
			Visit_POI_2();
		}

		VALUE Move_POI_6_POI_3() [3, 5]
		MEETS {
			Visit_POI_3();
		}

		VALUE Move_POI_6_POI_4() [3, 5]
		MEETS {
			Visit_POI_4();
		}

		VALUE Move_POI_6_POI_0() [6, 8]
		MEETS {
			Visit_POI_0();
		}

		VALUE Visit_POI_7() [24, 36]
		MEETS {
			Move_POI_7_POI_19();
			Move_POI_7_POI_18();
			Move_POI_7_POI_17();
			Move_POI_7_POI_16();
			Move_POI_7_POI_15();
			Move_POI_7_POI_14();
			Move_POI_7_POI_9();
			Move_POI_7_POI_13();
			Move_POI_7_POI_12();
			Move_POI_7_POI_11();
			Move_POI_7_POI_10();
			Move_POI_7_POI_5();
			Move_POI_7_POI_6();
			Move_POI_7_POI_8();
			Move_POI_7_POI_1();
			Move_POI_7_POI_2();
			Move_POI_7_POI_3();
			Move_POI_7_POI_4();
			Move_POI_7_POI_0();
			Finish();
		}

		VALUE Move_POI_7_POI_19() [7, 11]
		MEETS {
			Visit_POI_19();
		}

		VALUE Move_POI_7_POI_18() [6, 10]
		MEETS {
			Visit_POI_18();
		}

		VALUE Move_POI_7_POI_17() [6, 10]
		MEETS {
			Visit_POI_17();
		}

		VALUE Move_POI_7_POI_16() [7, 11]
		MEETS {
			Visit_POI_16();
		}

		VALUE Move_POI_7_POI_15() [5, 7]
		MEETS {
			Visit_POI_15();
		}

		VALUE Move_POI_7_POI_14() [6, 10]
		MEETS {
			Visit_POI_14();
		}

		VALUE Move_POI_7_POI_9() [6, 10]
		MEETS {
			Visit_POI_9();
		}

		VALUE Move_POI_7_POI_13() [6, 10]
		MEETS {
			Visit_POI_13();
		}

		VALUE Move_POI_7_POI_12() [2, 4]
		MEETS {
			Visit_POI_12();
		}

		VALUE Move_POI_7_POI_11() [6, 8]
		MEETS {
			Visit_POI_11();
		}

		VALUE Move_POI_7_POI_10() [7, 11]
		MEETS {
			Visit_POI_10();
		}

		VALUE Move_POI_7_POI_5() [2, 4]
		MEETS {
			Visit_POI_5();
		}

		VALUE Move_POI_7_POI_6() [6, 10]
		MEETS {
			Visit_POI_6();
		}

		VALUE Move_POI_7_POI_8() [3, 5]
		MEETS {
			Visit_POI_8();
		}

		VALUE Move_POI_7_POI_1() [5, 7]
		MEETS {
			Visit_POI_1();
		}

		VALUE Move_POI_7_POI_2() [1, 1]
		MEETS {
			Visit_POI_2();
		}

		VALUE Move_POI_7_POI_3() [2, 4]
		MEETS {
			Visit_POI_3();
		}

		VALUE Move_POI_7_POI_4() [4, 6]
		MEETS {
			Visit_POI_4();
		}

		VALUE Move_POI_7_POI_0() [5, 7]
		MEETS {
			Visit_POI_0();
		}

		VALUE Visit_POI_8() [16, 24]
		MEETS {
			Move_POI_8_POI_19();
			Move_POI_8_POI_18();
			Move_POI_8_POI_17();
			Move_POI_8_POI_16();
			Move_POI_8_POI_15();
			Move_POI_8_POI_14();
			Move_POI_8_POI_9();
			Move_POI_8_POI_13();
			Move_POI_8_POI_12();
			Move_POI_8_POI_11();
			Move_POI_8_POI_10();
			Move_POI_8_POI_5();
			Move_POI_8_POI_6();
			Move_POI_8_POI_7();
			Move_POI_8_POI_1();
			Move_POI_8_POI_2();
			Move_POI_8_POI_3();
			Move_POI_8_POI_4();
			Move_POI_8_POI_0();
			Finish();
		}

		VALUE Move_POI_8_POI_19() [4, 6]
		MEETS {
			Visit_POI_19();
		}

		VALUE Move_POI_8_POI_18() [5, 7]
		MEETS {
			Visit_POI_18();
		}

		VALUE Move_POI_8_POI_17() [2, 4]
		MEETS {
			Visit_POI_17();
		}

		VALUE Move_POI_8_POI_16() [4, 6]
		MEETS {
			Visit_POI_16();
		}

		VALUE Move_POI_8_POI_15() [6, 8]
		MEETS {
			Visit_POI_15();
		}

		VALUE Move_POI_8_POI_14() [7, 11]
		MEETS {
			Visit_POI_14();
		}

		VALUE Move_POI_8_POI_9() [5, 7]
		MEETS {
			Visit_POI_9();
		}

		VALUE Move_POI_8_POI_13() [5, 7]
		MEETS {
			Visit_POI_13();
		}

		VALUE Move_POI_8_POI_12() [6, 8]
		MEETS {
			Visit_POI_12();
		}

		VALUE Move_POI_8_POI_11() [2, 4]
		MEETS {
			Visit_POI_11();
		}

		VALUE Move_POI_8_POI_10() [2, 2]
		MEETS {
			Visit_POI_10();
		}

		VALUE Move_POI_8_POI_5() [7, 11]
		MEETS {
			Visit_POI_5();
		}

		VALUE Move_POI_8_POI_6() [2, 4]
		MEETS {
			Visit_POI_6();
		}

		VALUE Move_POI_8_POI_7() [5, 7]
		MEETS {
			Visit_POI_7();
		}

		VALUE Move_POI_8_POI_1() [2, 4]
		MEETS {
			Visit_POI_1();
		}

		VALUE Move_POI_8_POI_2() [2, 4]
		MEETS {
			Visit_POI_2();
		}

		VALUE Move_POI_8_POI_3() [7, 11]
		MEETS {
			Visit_POI_3();
		}

		VALUE Move_POI_8_POI_4() [6, 8]
		MEETS {
			Visit_POI_4();
		}

		VALUE Move_POI_8_POI_0() [4, 6]
		MEETS {
			Visit_POI_0();
		}

		VALUE Visit_POI_1() [72, 108]
		MEETS {
			Move_POI_1_POI_19();
			Move_POI_1_POI_18();
			Move_POI_1_POI_17();
			Move_POI_1_POI_16();
			Move_POI_1_POI_15();
			Move_POI_1_POI_14();
			Move_POI_1_POI_9();
			Move_POI_1_POI_13();
			Move_POI_1_POI_12();
			Move_POI_1_POI_11();
			Move_POI_1_POI_10();
			Move_POI_1_POI_5();
			Move_POI_1_POI_6();
			Move_POI_1_POI_7();
			Move_POI_1_POI_8();
			Move_POI_1_POI_2();
			Move_POI_1_POI_3();
			Move_POI_1_POI_4();
			Move_POI_1_POI_0();
			Finish();
		}

		VALUE Move_POI_1_POI_19() [6, 10]
		MEETS {
			Visit_POI_19();
		}

		VALUE Move_POI_1_POI_18() [7, 11]
		MEETS {
			Visit_POI_18();
		}

		VALUE Move_POI_1_POI_17() [6, 10]
		MEETS {
			Visit_POI_17();
		}

		VALUE Move_POI_1_POI_16() [6, 8]
		MEETS {
			Visit_POI_16();
		}

		VALUE Move_POI_1_POI_15() [5, 7]
		MEETS {
			Visit_POI_15();
		}

		VALUE Move_POI_1_POI_14() [3, 5]
		MEETS {
			Visit_POI_14();
		}

		VALUE Move_POI_1_POI_9() [2, 4]
		MEETS {
			Visit_POI_9();
		}

		VALUE Move_POI_1_POI_13() [5, 7]
		MEETS {
			Visit_POI_13();
		}

		VALUE Move_POI_1_POI_12() [3, 5]
		MEETS {
			Visit_POI_12();
		}

		VALUE Move_POI_1_POI_11() [5, 7]
		MEETS {
			Visit_POI_11();
		}

		VALUE Move_POI_1_POI_10() [2, 4]
		MEETS {
			Visit_POI_10();
		}

		VALUE Move_POI_1_POI_5() [6, 8]
		MEETS {
			Visit_POI_5();
		}

		VALUE Move_POI_1_POI_6() [4, 6]
		MEETS {
			Visit_POI_6();
		}

		VALUE Move_POI_1_POI_7() [5, 7]
		MEETS {
			Visit_POI_7();
		}

		VALUE Move_POI_1_POI_8() [4, 6]
		MEETS {
			Visit_POI_8();
		}

		VALUE Move_POI_1_POI_2() [7, 11]
		MEETS {
			Visit_POI_2();
		}

		VALUE Move_POI_1_POI_3() [5, 7]
		MEETS {
			Visit_POI_3();
		}

		VALUE Move_POI_1_POI_4() [7, 11]
		MEETS {
			Visit_POI_4();
		}

		VALUE Move_POI_1_POI_0() [1, 1]
		MEETS {
			Visit_POI_0();
		}

		VALUE Visit_POI_2() [8, 12]
		MEETS {
			Move_POI_2_POI_19();
			Move_POI_2_POI_18();
			Move_POI_2_POI_17();
			Move_POI_2_POI_16();
			Move_POI_2_POI_15();
			Move_POI_2_POI_14();
			Move_POI_2_POI_9();
			Move_POI_2_POI_13();
			Move_POI_2_POI_12();
			Move_POI_2_POI_11();
			Move_POI_2_POI_10();
			Move_POI_2_POI_5();
			Move_POI_2_POI_6();
			Move_POI_2_POI_7();
			Move_POI_2_POI_8();
			Move_POI_2_POI_1();
			Move_POI_2_POI_3();
			Move_POI_2_POI_4();
			Move_POI_2_POI_0();
			Finish();
		}

		VALUE Move_POI_2_POI_19() [6, 10]
		MEETS {
			Visit_POI_19();
		}

		VALUE Move_POI_2_POI_18() [5, 7]
		MEETS {
			Visit_POI_18();
		}

		VALUE Move_POI_2_POI_17() [1, 1]
		MEETS {
			Visit_POI_17();
		}

		VALUE Move_POI_2_POI_16() [6, 10]
		MEETS {
			Visit_POI_16();
		}

		VALUE Move_POI_2_POI_15() [2, 4]
		MEETS {
			Visit_POI_15();
		}

		VALUE Move_POI_2_POI_14() [3, 5]
		MEETS {
			Visit_POI_14();
		}

		VALUE Move_POI_2_POI_9() [5, 7]
		MEETS {
			Visit_POI_9();
		}

		VALUE Move_POI_2_POI_13() [7, 11]
		MEETS {
			Visit_POI_13();
		}

		VALUE Move_POI_2_POI_12() [6, 10]
		MEETS {
			Visit_POI_12();
		}

		VALUE Move_POI_2_POI_11() [3, 5]
		MEETS {
			Visit_POI_11();
		}

		VALUE Move_POI_2_POI_10() [1, 1]
		MEETS {
			Visit_POI_10();
		}

		VALUE Move_POI_2_POI_5() [6, 8]
		MEETS {
			Visit_POI_5();
		}

		VALUE Move_POI_2_POI_6() [1, 1]
		MEETS {
			Visit_POI_6();
		}

		VALUE Move_POI_2_POI_7() [6, 10]
		MEETS {
			Visit_POI_7();
		}

		VALUE Move_POI_2_POI_8() [6, 10]
		MEETS {
			Visit_POI_8();
		}

		VALUE Move_POI_2_POI_1() [6, 8]
		MEETS {
			Visit_POI_1();
		}

		VALUE Move_POI_2_POI_3() [6, 10]
		MEETS {
			Visit_POI_3();
		}

		VALUE Move_POI_2_POI_4() [4, 6]
		MEETS {
			Visit_POI_4();
		}

		VALUE Move_POI_2_POI_0() [2, 2]
		MEETS {
			Visit_POI_0();
		}

		VALUE Visit_POI_3() [24, 36]
		MEETS {
			Move_POI_3_POI_19();
			Move_POI_3_POI_18();
			Move_POI_3_POI_17();
			Move_POI_3_POI_16();
			Move_POI_3_POI_15();
			Move_POI_3_POI_14();
			Move_POI_3_POI_9();
			Move_POI_3_POI_13();
			Move_POI_3_POI_12();
			Move_POI_3_POI_11();
			Move_POI_3_POI_10();
			Move_POI_3_POI_5();
			Move_POI_3_POI_6();
			Move_POI_3_POI_7();
			Move_POI_3_POI_8();
			Move_POI_3_POI_1();
			Move_POI_3_POI_2();
			Move_POI_3_POI_4();
			Move_POI_3_POI_0();
			Finish();
		}

		VALUE Move_POI_3_POI_19() [5, 7]
		MEETS {
			Visit_POI_19();
		}

		VALUE Move_POI_3_POI_18() [2, 2]
		MEETS {
			Visit_POI_18();
		}

		VALUE Move_POI_3_POI_17() [2, 2]
		MEETS {
			Visit_POI_17();
		}

		VALUE Move_POI_3_POI_16() [7, 11]
		MEETS {
			Visit_POI_16();
		}

		VALUE Move_POI_3_POI_15() [7, 11]
		MEETS {
			Visit_POI_15();
		}

		VALUE Move_POI_3_POI_14() [4, 6]
		MEETS {
			Visit_POI_14();
		}

		VALUE Move_POI_3_POI_9() [3, 5]
		MEETS {
			Visit_POI_9();
		}

		VALUE Move_POI_3_POI_13() [6, 8]
		MEETS {
			Visit_POI_13();
		}

		VALUE Move_POI_3_POI_12() [4, 6]
		MEETS {
			Visit_POI_12();
		}

		VALUE Move_POI_3_POI_11() [5, 7]
		MEETS {
			Visit_POI_11();
		}

		VALUE Move_POI_3_POI_10() [6, 8]
		MEETS {
			Visit_POI_10();
		}

		VALUE Move_POI_3_POI_5() [4, 6]
		MEETS {
			Visit_POI_5();
		}

		VALUE Move_POI_3_POI_6() [2, 2]
		MEETS {
			Visit_POI_6();
		}

		VALUE Move_POI_3_POI_7() [2, 4]
		MEETS {
			Visit_POI_7();
		}

		VALUE Move_POI_3_POI_8() [4, 6]
		MEETS {
			Visit_POI_8();
		}

		VALUE Move_POI_3_POI_1() [7, 11]
		MEETS {
			Visit_POI_1();
		}

		VALUE Move_POI_3_POI_2() [2, 4]
		MEETS {
			Visit_POI_2();
		}

		VALUE Move_POI_3_POI_4() [7, 11]
		MEETS {
			Visit_POI_4();
		}

		VALUE Move_POI_3_POI_0() [4, 6]
		MEETS {
			Visit_POI_0();
		}

		VALUE Visit_POI_4() [24, 36]
		MEETS {
			Move_POI_4_POI_19();
			Move_POI_4_POI_18();
			Move_POI_4_POI_17();
			Move_POI_4_POI_16();
			Move_POI_4_POI_15();
			Move_POI_4_POI_14();
			Move_POI_4_POI_9();
			Move_POI_4_POI_13();
			Move_POI_4_POI_12();
			Move_POI_4_POI_11();
			Move_POI_4_POI_10();
			Move_POI_4_POI_5();
			Move_POI_4_POI_6();
			Move_POI_4_POI_7();
			Move_POI_4_POI_8();
			Move_POI_4_POI_1();
			Move_POI_4_POI_2();
			Move_POI_4_POI_3();
			Move_POI_4_POI_0();
			Finish();
		}

		VALUE Move_POI_4_POI_19() [6, 8]
		MEETS {
			Visit_POI_19();
		}

		VALUE Move_POI_4_POI_18() [7, 11]
		MEETS {
			Visit_POI_18();
		}

		VALUE Move_POI_4_POI_17() [3, 5]
		MEETS {
			Visit_POI_17();
		}

		VALUE Move_POI_4_POI_16() [3, 5]
		MEETS {
			Visit_POI_16();
		}

		VALUE Move_POI_4_POI_15() [2, 2]
		MEETS {
			Visit_POI_15();
		}

		VALUE Move_POI_4_POI_14() [6, 10]
		MEETS {
			Visit_POI_14();
		}

		VALUE Move_POI_4_POI_9() [4, 6]
		MEETS {
			Visit_POI_9();
		}

		VALUE Move_POI_4_POI_13() [6, 8]
		MEETS {
			Visit_POI_13();
		}

		VALUE Move_POI_4_POI_12() [6, 8]
		MEETS {
			Visit_POI_12();
		}

		VALUE Move_POI_4_POI_11() [7, 11]
		MEETS {
			Visit_POI_11();
		}

		VALUE Move_POI_4_POI_10() [1, 1]
		MEETS {
			Visit_POI_10();
		}

		VALUE Move_POI_4_POI_5() [4, 6]
		MEETS {
			Visit_POI_5();
		}

		VALUE Move_POI_4_POI_6() [7, 11]
		MEETS {
			Visit_POI_6();
		}

		VALUE Move_POI_4_POI_7() [3, 5]
		MEETS {
			Visit_POI_7();
		}

		VALUE Move_POI_4_POI_8() [4, 6]
		MEETS {
			Visit_POI_8();
		}

		VALUE Move_POI_4_POI_1() [6, 10]
		MEETS {
			Visit_POI_1();
		}

		VALUE Move_POI_4_POI_2() [6, 8]
		MEETS {
			Visit_POI_2();
		}

		VALUE Move_POI_4_POI_3() [2, 2]
		MEETS {
			Visit_POI_3();
		}

		VALUE Move_POI_4_POI_0() [7, 11]
		MEETS {
			Visit_POI_0();
		}

		VALUE Visit_POI_0() [24, 36]
		MEETS {
			Move_POI_0_POI_19();
			Move_POI_0_POI_18();
			Move_POI_0_POI_17();
			Move_POI_0_POI_16();
			Move_POI_0_POI_15();
			Move_POI_0_POI_14();
			Move_POI_0_POI_9();
			Move_POI_0_POI_13();
			Move_POI_0_POI_12();
			Move_POI_0_POI_11();
			Move_POI_0_POI_10();
			Move_POI_0_POI_5();
			Move_POI_0_POI_6();
			Move_POI_0_POI_7();
			Move_POI_0_POI_8();
			Move_POI_0_POI_1();
			Move_POI_0_POI_2();
			Move_POI_0_POI_3();
			Move_POI_0_POI_4();
			Finish();
		}

		VALUE Move_POI_0_POI_19() [5, 7]
		MEETS {
			Visit_POI_19();
		}

		VALUE Move_POI_0_POI_18() [7, 11]
		MEETS {
			Visit_POI_18();
		}

		VALUE Move_POI_0_POI_17() [2, 2]
		MEETS {
			Visit_POI_17();
		}

		VALUE Move_POI_0_POI_16() [1, 1]
		MEETS {
			Visit_POI_16();
		}

		VALUE Move_POI_0_POI_15() [3, 5]
		MEETS {
			Visit_POI_15();
		}

		VALUE Move_POI_0_POI_14() [2, 4]
		MEETS {
			Visit_POI_14();
		}

		VALUE Move_POI_0_POI_9() [2, 4]
		MEETS {
			Visit_POI_9();
		}

		VALUE Move_POI_0_POI_13() [2, 4]
		MEETS {
			Visit_POI_13();
		}

		VALUE Move_POI_0_POI_12() [2, 2]
		MEETS {
			Visit_POI_12();
		}

		VALUE Move_POI_0_POI_11() [5, 7]
		MEETS {
			Visit_POI_11();
		}

		VALUE Move_POI_0_POI_10() [6, 10]
		MEETS {
			Visit_POI_10();
		}

		VALUE Move_POI_0_POI_5() [5, 7]
		MEETS {
			Visit_POI_5();
		}

		VALUE Move_POI_0_POI_6() [5, 7]
		MEETS {
			Visit_POI_6();
		}

		VALUE Move_POI_0_POI_7() [2, 4]
		MEETS {
			Visit_POI_7();
		}

		VALUE Move_POI_0_POI_8() [7, 11]
		MEETS {
			Visit_POI_8();
		}

		VALUE Move_POI_0_POI_1() [5, 7]
		MEETS {
			Visit_POI_1();
		}

		VALUE Move_POI_0_POI_2() [2, 2]
		MEETS {
			Visit_POI_2();
		}

		VALUE Move_POI_0_POI_3() [6, 8]
		MEETS {
			Visit_POI_3();
		}

		VALUE Move_POI_0_POI_4() [4, 6]
		MEETS {
			Visit_POI_4();
		}


	}

	COMP_TYPE SingletonStateVariable TripWindowType(None(), Visit()) {

		VALUE None() [1, 1]
		MEETS {
			Visit();
		}

		VALUE Visit() [400, 400]
		MEETS {
			None();
		}


	}

	COMPONENT TripPlanning {FLEXIBLE decisions(functional)} : PlanningDecisionType;
	COMPONENT TripPath {FLEXIBLE hops(primitive)} : TripPathType;
	COMPONENT TripWindow {FLEXIBLE visit(uncontrollable)} : TripWindowType;


	SYNCHRONIZE TripPlanning.decisions {

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_19();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_18();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_17();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_16();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_15();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_14();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_9();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_13();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_12();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_11();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_10();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_5();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_6();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_7();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_8();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_1();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_2();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_3();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_4();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_0();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 TripPath.hops.Finish();
			CONTAINS [0, +INF] [0, +INF] cd0;
		}

	}


}

