DOMAIN TRIP_PLANNING {

	TEMPORAL_MODULE tm = [0, 248], 1000;

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
		 Visit_POI_29(), Move_Home_POI_29(), Move_POI_29_POI_28(), Move_POI_29_POI_39(), Move_POI_29_POI_27(), Move_POI_29_POI_38(), Move_POI_29_POI_26(), Move_POI_29_POI_37(), Move_POI_29_POI_25(), Move_POI_29_POI_36(), Move_POI_29_POI_35(), Move_POI_29_POI_34(), Move_POI_29_POI_33(), Move_POI_29_POI_44(), Move_POI_29_POI_32(), Move_POI_29_POI_43(), Move_POI_29_POI_31(), Move_POI_29_POI_42(), Move_POI_29_POI_30(), Move_POI_29_POI_41(), Move_POI_29_POI_40(), 
		 Visit_POI_28(), Move_Home_POI_28(), Move_POI_28_POI_29(), Move_POI_28_POI_39(), Move_POI_28_POI_27(), Move_POI_28_POI_38(), Move_POI_28_POI_26(), Move_POI_28_POI_37(), Move_POI_28_POI_25(), Move_POI_28_POI_36(), Move_POI_28_POI_35(), Move_POI_28_POI_34(), Move_POI_28_POI_33(), Move_POI_28_POI_44(), Move_POI_28_POI_32(), Move_POI_28_POI_43(), Move_POI_28_POI_31(), Move_POI_28_POI_42(), Move_POI_28_POI_30(), Move_POI_28_POI_41(), Move_POI_28_POI_40(), 
		 Visit_POI_39(), Move_Home_POI_39(), Move_POI_39_POI_29(), Move_POI_39_POI_28(), Move_POI_39_POI_27(), Move_POI_39_POI_38(), Move_POI_39_POI_26(), Move_POI_39_POI_37(), Move_POI_39_POI_25(), Move_POI_39_POI_36(), Move_POI_39_POI_35(), Move_POI_39_POI_34(), Move_POI_39_POI_33(), Move_POI_39_POI_44(), Move_POI_39_POI_32(), Move_POI_39_POI_43(), Move_POI_39_POI_31(), Move_POI_39_POI_42(), Move_POI_39_POI_30(), Move_POI_39_POI_41(), Move_POI_39_POI_40(), 
		 Visit_POI_27(), Move_Home_POI_27(), Move_POI_27_POI_29(), Move_POI_27_POI_28(), Move_POI_27_POI_39(), Move_POI_27_POI_38(), Move_POI_27_POI_26(), Move_POI_27_POI_37(), Move_POI_27_POI_25(), Move_POI_27_POI_36(), Move_POI_27_POI_35(), Move_POI_27_POI_34(), Move_POI_27_POI_33(), Move_POI_27_POI_44(), Move_POI_27_POI_32(), Move_POI_27_POI_43(), Move_POI_27_POI_31(), Move_POI_27_POI_42(), Move_POI_27_POI_30(), Move_POI_27_POI_41(), Move_POI_27_POI_40(), 
		 Visit_POI_38(), Move_Home_POI_38(), Move_POI_38_POI_29(), Move_POI_38_POI_28(), Move_POI_38_POI_39(), Move_POI_38_POI_27(), Move_POI_38_POI_26(), Move_POI_38_POI_37(), Move_POI_38_POI_25(), Move_POI_38_POI_36(), Move_POI_38_POI_35(), Move_POI_38_POI_34(), Move_POI_38_POI_33(), Move_POI_38_POI_44(), Move_POI_38_POI_32(), Move_POI_38_POI_43(), Move_POI_38_POI_31(), Move_POI_38_POI_42(), Move_POI_38_POI_30(), Move_POI_38_POI_41(), Move_POI_38_POI_40(), 
		 Visit_POI_26(), Move_Home_POI_26(), Move_POI_26_POI_29(), Move_POI_26_POI_28(), Move_POI_26_POI_39(), Move_POI_26_POI_27(), Move_POI_26_POI_38(), Move_POI_26_POI_37(), Move_POI_26_POI_25(), Move_POI_26_POI_36(), Move_POI_26_POI_35(), Move_POI_26_POI_34(), Move_POI_26_POI_33(), Move_POI_26_POI_44(), Move_POI_26_POI_32(), Move_POI_26_POI_43(), Move_POI_26_POI_31(), Move_POI_26_POI_42(), Move_POI_26_POI_30(), Move_POI_26_POI_41(), Move_POI_26_POI_40(), 
		 Visit_POI_37(), Move_Home_POI_37(), Move_POI_37_POI_29(), Move_POI_37_POI_28(), Move_POI_37_POI_39(), Move_POI_37_POI_27(), Move_POI_37_POI_38(), Move_POI_37_POI_26(), Move_POI_37_POI_25(), Move_POI_37_POI_36(), Move_POI_37_POI_35(), Move_POI_37_POI_34(), Move_POI_37_POI_33(), Move_POI_37_POI_44(), Move_POI_37_POI_32(), Move_POI_37_POI_43(), Move_POI_37_POI_31(), Move_POI_37_POI_42(), Move_POI_37_POI_30(), Move_POI_37_POI_41(), Move_POI_37_POI_40(), 
		 Visit_POI_25(), Move_Home_POI_25(), Move_POI_25_POI_29(), Move_POI_25_POI_28(), Move_POI_25_POI_39(), Move_POI_25_POI_27(), Move_POI_25_POI_38(), Move_POI_25_POI_26(), Move_POI_25_POI_37(), Move_POI_25_POI_36(), Move_POI_25_POI_35(), Move_POI_25_POI_34(), Move_POI_25_POI_33(), Move_POI_25_POI_44(), Move_POI_25_POI_32(), Move_POI_25_POI_43(), Move_POI_25_POI_31(), Move_POI_25_POI_42(), Move_POI_25_POI_30(), Move_POI_25_POI_41(), Move_POI_25_POI_40(), 
		 Visit_POI_36(), Move_Home_POI_36(), Move_POI_36_POI_29(), Move_POI_36_POI_28(), Move_POI_36_POI_39(), Move_POI_36_POI_27(), Move_POI_36_POI_38(), Move_POI_36_POI_26(), Move_POI_36_POI_37(), Move_POI_36_POI_25(), Move_POI_36_POI_35(), Move_POI_36_POI_34(), Move_POI_36_POI_33(), Move_POI_36_POI_44(), Move_POI_36_POI_32(), Move_POI_36_POI_43(), Move_POI_36_POI_31(), Move_POI_36_POI_42(), Move_POI_36_POI_30(), Move_POI_36_POI_41(), Move_POI_36_POI_40(), 
		 Visit_POI_35(), Move_Home_POI_35(), Move_POI_35_POI_29(), Move_POI_35_POI_28(), Move_POI_35_POI_39(), Move_POI_35_POI_27(), Move_POI_35_POI_38(), Move_POI_35_POI_26(), Move_POI_35_POI_37(), Move_POI_35_POI_25(), Move_POI_35_POI_36(), Move_POI_35_POI_34(), Move_POI_35_POI_33(), Move_POI_35_POI_44(), Move_POI_35_POI_32(), Move_POI_35_POI_43(), Move_POI_35_POI_31(), Move_POI_35_POI_42(), Move_POI_35_POI_30(), Move_POI_35_POI_41(), Move_POI_35_POI_40(), 
		 Visit_POI_34(), Move_Home_POI_34(), Move_POI_34_POI_29(), Move_POI_34_POI_28(), Move_POI_34_POI_39(), Move_POI_34_POI_27(), Move_POI_34_POI_38(), Move_POI_34_POI_26(), Move_POI_34_POI_37(), Move_POI_34_POI_25(), Move_POI_34_POI_36(), Move_POI_34_POI_35(), Move_POI_34_POI_33(), Move_POI_34_POI_44(), Move_POI_34_POI_32(), Move_POI_34_POI_43(), Move_POI_34_POI_31(), Move_POI_34_POI_42(), Move_POI_34_POI_30(), Move_POI_34_POI_41(), Move_POI_34_POI_40(), 
		 Visit_POI_33(), Move_Home_POI_33(), Move_POI_33_POI_29(), Move_POI_33_POI_28(), Move_POI_33_POI_39(), Move_POI_33_POI_27(), Move_POI_33_POI_38(), Move_POI_33_POI_26(), Move_POI_33_POI_37(), Move_POI_33_POI_25(), Move_POI_33_POI_36(), Move_POI_33_POI_35(), Move_POI_33_POI_34(), Move_POI_33_POI_44(), Move_POI_33_POI_32(), Move_POI_33_POI_43(), Move_POI_33_POI_31(), Move_POI_33_POI_42(), Move_POI_33_POI_30(), Move_POI_33_POI_41(), Move_POI_33_POI_40(), 
		 Visit_POI_44(), Move_Home_POI_44(), Move_POI_44_POI_29(), Move_POI_44_POI_28(), Move_POI_44_POI_39(), Move_POI_44_POI_27(), Move_POI_44_POI_38(), Move_POI_44_POI_26(), Move_POI_44_POI_37(), Move_POI_44_POI_25(), Move_POI_44_POI_36(), Move_POI_44_POI_35(), Move_POI_44_POI_34(), Move_POI_44_POI_33(), Move_POI_44_POI_32(), Move_POI_44_POI_43(), Move_POI_44_POI_31(), Move_POI_44_POI_42(), Move_POI_44_POI_30(), Move_POI_44_POI_41(), Move_POI_44_POI_40(), 
		 Visit_POI_32(), Move_Home_POI_32(), Move_POI_32_POI_29(), Move_POI_32_POI_28(), Move_POI_32_POI_39(), Move_POI_32_POI_27(), Move_POI_32_POI_38(), Move_POI_32_POI_26(), Move_POI_32_POI_37(), Move_POI_32_POI_25(), Move_POI_32_POI_36(), Move_POI_32_POI_35(), Move_POI_32_POI_34(), Move_POI_32_POI_33(), Move_POI_32_POI_44(), Move_POI_32_POI_43(), Move_POI_32_POI_31(), Move_POI_32_POI_42(), Move_POI_32_POI_30(), Move_POI_32_POI_41(), Move_POI_32_POI_40(), 
		 Visit_POI_43(), Move_Home_POI_43(), Move_POI_43_POI_29(), Move_POI_43_POI_28(), Move_POI_43_POI_39(), Move_POI_43_POI_27(), Move_POI_43_POI_38(), Move_POI_43_POI_26(), Move_POI_43_POI_37(), Move_POI_43_POI_25(), Move_POI_43_POI_36(), Move_POI_43_POI_35(), Move_POI_43_POI_34(), Move_POI_43_POI_33(), Move_POI_43_POI_44(), Move_POI_43_POI_32(), Move_POI_43_POI_31(), Move_POI_43_POI_42(), Move_POI_43_POI_30(), Move_POI_43_POI_41(), Move_POI_43_POI_40(), 
		 Visit_POI_31(), Move_Home_POI_31(), Move_POI_31_POI_29(), Move_POI_31_POI_28(), Move_POI_31_POI_39(), Move_POI_31_POI_27(), Move_POI_31_POI_38(), Move_POI_31_POI_26(), Move_POI_31_POI_37(), Move_POI_31_POI_25(), Move_POI_31_POI_36(), Move_POI_31_POI_35(), Move_POI_31_POI_34(), Move_POI_31_POI_33(), Move_POI_31_POI_44(), Move_POI_31_POI_32(), Move_POI_31_POI_43(), Move_POI_31_POI_42(), Move_POI_31_POI_30(), Move_POI_31_POI_41(), Move_POI_31_POI_40(), 
		 Visit_POI_42(), Move_Home_POI_42(), Move_POI_42_POI_29(), Move_POI_42_POI_28(), Move_POI_42_POI_39(), Move_POI_42_POI_27(), Move_POI_42_POI_38(), Move_POI_42_POI_26(), Move_POI_42_POI_37(), Move_POI_42_POI_25(), Move_POI_42_POI_36(), Move_POI_42_POI_35(), Move_POI_42_POI_34(), Move_POI_42_POI_33(), Move_POI_42_POI_44(), Move_POI_42_POI_32(), Move_POI_42_POI_43(), Move_POI_42_POI_31(), Move_POI_42_POI_30(), Move_POI_42_POI_41(), Move_POI_42_POI_40(), 
		 Visit_POI_30(), Move_Home_POI_30(), Move_POI_30_POI_29(), Move_POI_30_POI_28(), Move_POI_30_POI_39(), Move_POI_30_POI_27(), Move_POI_30_POI_38(), Move_POI_30_POI_26(), Move_POI_30_POI_37(), Move_POI_30_POI_25(), Move_POI_30_POI_36(), Move_POI_30_POI_35(), Move_POI_30_POI_34(), Move_POI_30_POI_33(), Move_POI_30_POI_44(), Move_POI_30_POI_32(), Move_POI_30_POI_43(), Move_POI_30_POI_31(), Move_POI_30_POI_42(), Move_POI_30_POI_41(), Move_POI_30_POI_40(), 
		 Visit_POI_41(), Move_Home_POI_41(), Move_POI_41_POI_29(), Move_POI_41_POI_28(), Move_POI_41_POI_39(), Move_POI_41_POI_27(), Move_POI_41_POI_38(), Move_POI_41_POI_26(), Move_POI_41_POI_37(), Move_POI_41_POI_25(), Move_POI_41_POI_36(), Move_POI_41_POI_35(), Move_POI_41_POI_34(), Move_POI_41_POI_33(), Move_POI_41_POI_44(), Move_POI_41_POI_32(), Move_POI_41_POI_43(), Move_POI_41_POI_31(), Move_POI_41_POI_42(), Move_POI_41_POI_30(), Move_POI_41_POI_40(), 
		 Visit_POI_40(), Move_Home_POI_40(), Move_POI_40_POI_29(), Move_POI_40_POI_28(), Move_POI_40_POI_39(), Move_POI_40_POI_27(), Move_POI_40_POI_38(), Move_POI_40_POI_26(), Move_POI_40_POI_37(), Move_POI_40_POI_25(), Move_POI_40_POI_36(), Move_POI_40_POI_35(), Move_POI_40_POI_34(), Move_POI_40_POI_33(), Move_POI_40_POI_44(), Move_POI_40_POI_32(), Move_POI_40_POI_43(), Move_POI_40_POI_31(), Move_POI_40_POI_42(), Move_POI_40_POI_30(), Move_POI_40_POI_41(), 
	) {

		VALUE Home() [1, 1]
		MEETS {
			Move_Home_POI_29();
			Move_Home_POI_28();
			Move_Home_POI_39();
			Move_Home_POI_27();
			Move_Home_POI_38();
			Move_Home_POI_26();
			Move_Home_POI_37();
			Move_Home_POI_25();
			Move_Home_POI_36();
			Move_Home_POI_35();
			Move_Home_POI_34();
			Move_Home_POI_33();
			Move_Home_POI_44();
			Move_Home_POI_32();
			Move_Home_POI_43();
			Move_Home_POI_31();
			Move_Home_POI_42();
			Move_Home_POI_30();
			Move_Home_POI_41();
			Move_Home_POI_40();
		}

		VALUE Finish() [1, +INF]
		MEETS {
			Home();
		}

		VALUE Move_Home_POI_29() [2, 4]
		MEETS {
			Visit_POI_29();
		}

		VALUE Move_Home_POI_28() [5, 7]
		MEETS {
			Visit_POI_28();
		}

		VALUE Move_Home_POI_39() [3, 5]
		MEETS {
			Visit_POI_39();
		}

		VALUE Move_Home_POI_27() [3, 5]
		MEETS {
			Visit_POI_27();
		}

		VALUE Move_Home_POI_38() [5, 7]
		MEETS {
			Visit_POI_38();
		}

		VALUE Move_Home_POI_26() [2, 4]
		MEETS {
			Visit_POI_26();
		}

		VALUE Move_Home_POI_37() [6, 10]
		MEETS {
			Visit_POI_37();
		}

		VALUE Move_Home_POI_25() [6, 8]
		MEETS {
			Visit_POI_25();
		}

		VALUE Move_Home_POI_36() [1, 1]
		MEETS {
			Visit_POI_36();
		}

		VALUE Move_Home_POI_35() [6, 10]
		MEETS {
			Visit_POI_35();
		}

		VALUE Move_Home_POI_34() [2, 2]
		MEETS {
			Visit_POI_34();
		}

		VALUE Move_Home_POI_33() [5, 7]
		MEETS {
			Visit_POI_33();
		}

		VALUE Move_Home_POI_44() [4, 6]
		MEETS {
			Visit_POI_44();
		}

		VALUE Move_Home_POI_32() [2, 2]
		MEETS {
			Visit_POI_32();
		}

		VALUE Move_Home_POI_43() [2, 4]
		MEETS {
			Visit_POI_43();
		}

		VALUE Move_Home_POI_31() [1, 1]
		MEETS {
			Visit_POI_31();
		}

		VALUE Move_Home_POI_42() [6, 10]
		MEETS {
			Visit_POI_42();
		}

		VALUE Move_Home_POI_30() [2, 4]
		MEETS {
			Visit_POI_30();
		}

		VALUE Move_Home_POI_41() [1, 1]
		MEETS {
			Visit_POI_41();
		}

		VALUE Move_Home_POI_40() [2, 4]
		MEETS {
			Visit_POI_40();
		}

		VALUE Visit_POI_29() [24, 36]
		MEETS {
			Move_POI_29_POI_28();
			Move_POI_29_POI_39();
			Move_POI_29_POI_27();
			Move_POI_29_POI_38();
			Move_POI_29_POI_26();
			Move_POI_29_POI_37();
			Move_POI_29_POI_25();
			Move_POI_29_POI_36();
			Move_POI_29_POI_35();
			Move_POI_29_POI_34();
			Move_POI_29_POI_33();
			Move_POI_29_POI_44();
			Move_POI_29_POI_32();
			Move_POI_29_POI_43();
			Move_POI_29_POI_31();
			Move_POI_29_POI_42();
			Move_POI_29_POI_30();
			Move_POI_29_POI_41();
			Move_POI_29_POI_40();
			Finish();
		}

		VALUE Move_POI_29_POI_28() [7, 11]
		MEETS {
			Visit_POI_28();
		}

		VALUE Move_POI_29_POI_39() [4, 6]
		MEETS {
			Visit_POI_39();
		}

		VALUE Move_POI_29_POI_27() [3, 5]
		MEETS {
			Visit_POI_27();
		}

		VALUE Move_POI_29_POI_38() [1, 1]
		MEETS {
			Visit_POI_38();
		}

		VALUE Move_POI_29_POI_26() [6, 8]
		MEETS {
			Visit_POI_26();
		}

		VALUE Move_POI_29_POI_37() [1, 1]
		MEETS {
			Visit_POI_37();
		}

		VALUE Move_POI_29_POI_25() [1, 1]
		MEETS {
			Visit_POI_25();
		}

		VALUE Move_POI_29_POI_36() [6, 10]
		MEETS {
			Visit_POI_36();
		}

		VALUE Move_POI_29_POI_35() [4, 6]
		MEETS {
			Visit_POI_35();
		}

		VALUE Move_POI_29_POI_34() [3, 5]
		MEETS {
			Visit_POI_34();
		}

		VALUE Move_POI_29_POI_33() [1, 1]
		MEETS {
			Visit_POI_33();
		}

		VALUE Move_POI_29_POI_44() [2, 2]
		MEETS {
			Visit_POI_44();
		}

		VALUE Move_POI_29_POI_32() [6, 10]
		MEETS {
			Visit_POI_32();
		}

		VALUE Move_POI_29_POI_43() [6, 10]
		MEETS {
			Visit_POI_43();
		}

		VALUE Move_POI_29_POI_31() [2, 4]
		MEETS {
			Visit_POI_31();
		}

		VALUE Move_POI_29_POI_42() [2, 4]
		MEETS {
			Visit_POI_42();
		}

		VALUE Move_POI_29_POI_30() [4, 6]
		MEETS {
			Visit_POI_30();
		}

		VALUE Move_POI_29_POI_41() [1, 1]
		MEETS {
			Visit_POI_41();
		}

		VALUE Move_POI_29_POI_40() [6, 10]
		MEETS {
			Visit_POI_40();
		}

		VALUE Visit_POI_28() [24, 36]
		MEETS {
			Move_POI_28_POI_29();
			Move_POI_28_POI_39();
			Move_POI_28_POI_27();
			Move_POI_28_POI_38();
			Move_POI_28_POI_26();
			Move_POI_28_POI_37();
			Move_POI_28_POI_25();
			Move_POI_28_POI_36();
			Move_POI_28_POI_35();
			Move_POI_28_POI_34();
			Move_POI_28_POI_33();
			Move_POI_28_POI_44();
			Move_POI_28_POI_32();
			Move_POI_28_POI_43();
			Move_POI_28_POI_31();
			Move_POI_28_POI_42();
			Move_POI_28_POI_30();
			Move_POI_28_POI_41();
			Move_POI_28_POI_40();
			Finish();
		}

		VALUE Move_POI_28_POI_29() [2, 4]
		MEETS {
			Visit_POI_29();
		}

		VALUE Move_POI_28_POI_39() [1, 1]
		MEETS {
			Visit_POI_39();
		}

		VALUE Move_POI_28_POI_27() [4, 6]
		MEETS {
			Visit_POI_27();
		}

		VALUE Move_POI_28_POI_38() [4, 6]
		MEETS {
			Visit_POI_38();
		}

		VALUE Move_POI_28_POI_26() [5, 7]
		MEETS {
			Visit_POI_26();
		}

		VALUE Move_POI_28_POI_37() [2, 2]
		MEETS {
			Visit_POI_37();
		}

		VALUE Move_POI_28_POI_25() [7, 11]
		MEETS {
			Visit_POI_25();
		}

		VALUE Move_POI_28_POI_36() [2, 2]
		MEETS {
			Visit_POI_36();
		}

		VALUE Move_POI_28_POI_35() [3, 5]
		MEETS {
			Visit_POI_35();
		}

		VALUE Move_POI_28_POI_34() [4, 6]
		MEETS {
			Visit_POI_34();
		}

		VALUE Move_POI_28_POI_33() [3, 5]
		MEETS {
			Visit_POI_33();
		}

		VALUE Move_POI_28_POI_44() [6, 8]
		MEETS {
			Visit_POI_44();
		}

		VALUE Move_POI_28_POI_32() [2, 4]
		MEETS {
			Visit_POI_32();
		}

		VALUE Move_POI_28_POI_43() [2, 2]
		MEETS {
			Visit_POI_43();
		}

		VALUE Move_POI_28_POI_31() [5, 7]
		MEETS {
			Visit_POI_31();
		}

		VALUE Move_POI_28_POI_42() [2, 2]
		MEETS {
			Visit_POI_42();
		}

		VALUE Move_POI_28_POI_30() [2, 2]
		MEETS {
			Visit_POI_30();
		}

		VALUE Move_POI_28_POI_41() [2, 4]
		MEETS {
			Visit_POI_41();
		}

		VALUE Move_POI_28_POI_40() [2, 4]
		MEETS {
			Visit_POI_40();
		}

		VALUE Visit_POI_39() [8, 12]
		MEETS {
			Move_POI_39_POI_29();
			Move_POI_39_POI_28();
			Move_POI_39_POI_27();
			Move_POI_39_POI_38();
			Move_POI_39_POI_26();
			Move_POI_39_POI_37();
			Move_POI_39_POI_25();
			Move_POI_39_POI_36();
			Move_POI_39_POI_35();
			Move_POI_39_POI_34();
			Move_POI_39_POI_33();
			Move_POI_39_POI_44();
			Move_POI_39_POI_32();
			Move_POI_39_POI_43();
			Move_POI_39_POI_31();
			Move_POI_39_POI_42();
			Move_POI_39_POI_30();
			Move_POI_39_POI_41();
			Move_POI_39_POI_40();
			Finish();
		}

		VALUE Move_POI_39_POI_29() [4, 6]
		MEETS {
			Visit_POI_29();
		}

		VALUE Move_POI_39_POI_28() [5, 7]
		MEETS {
			Visit_POI_28();
		}

		VALUE Move_POI_39_POI_27() [7, 11]
		MEETS {
			Visit_POI_27();
		}

		VALUE Move_POI_39_POI_38() [4, 6]
		MEETS {
			Visit_POI_38();
		}

		VALUE Move_POI_39_POI_26() [2, 2]
		MEETS {
			Visit_POI_26();
		}

		VALUE Move_POI_39_POI_37() [2, 4]
		MEETS {
			Visit_POI_37();
		}

		VALUE Move_POI_39_POI_25() [4, 6]
		MEETS {
			Visit_POI_25();
		}

		VALUE Move_POI_39_POI_36() [6, 10]
		MEETS {
			Visit_POI_36();
		}

		VALUE Move_POI_39_POI_35() [6, 8]
		MEETS {
			Visit_POI_35();
		}

		VALUE Move_POI_39_POI_34() [1, 1]
		MEETS {
			Visit_POI_34();
		}

		VALUE Move_POI_39_POI_33() [2, 4]
		MEETS {
			Visit_POI_33();
		}

		VALUE Move_POI_39_POI_44() [6, 8]
		MEETS {
			Visit_POI_44();
		}

		VALUE Move_POI_39_POI_32() [6, 10]
		MEETS {
			Visit_POI_32();
		}

		VALUE Move_POI_39_POI_43() [4, 6]
		MEETS {
			Visit_POI_43();
		}

		VALUE Move_POI_39_POI_31() [6, 8]
		MEETS {
			Visit_POI_31();
		}

		VALUE Move_POI_39_POI_42() [6, 10]
		MEETS {
			Visit_POI_42();
		}

		VALUE Move_POI_39_POI_30() [5, 7]
		MEETS {
			Visit_POI_30();
		}

		VALUE Move_POI_39_POI_41() [6, 10]
		MEETS {
			Visit_POI_41();
		}

		VALUE Move_POI_39_POI_40() [6, 10]
		MEETS {
			Visit_POI_40();
		}

		VALUE Visit_POI_27() [8, 12]
		MEETS {
			Move_POI_27_POI_29();
			Move_POI_27_POI_28();
			Move_POI_27_POI_39();
			Move_POI_27_POI_38();
			Move_POI_27_POI_26();
			Move_POI_27_POI_37();
			Move_POI_27_POI_25();
			Move_POI_27_POI_36();
			Move_POI_27_POI_35();
			Move_POI_27_POI_34();
			Move_POI_27_POI_33();
			Move_POI_27_POI_44();
			Move_POI_27_POI_32();
			Move_POI_27_POI_43();
			Move_POI_27_POI_31();
			Move_POI_27_POI_42();
			Move_POI_27_POI_30();
			Move_POI_27_POI_41();
			Move_POI_27_POI_40();
			Finish();
		}

		VALUE Move_POI_27_POI_29() [6, 10]
		MEETS {
			Visit_POI_29();
		}

		VALUE Move_POI_27_POI_28() [5, 7]
		MEETS {
			Visit_POI_28();
		}

		VALUE Move_POI_27_POI_39() [3, 5]
		MEETS {
			Visit_POI_39();
		}

		VALUE Move_POI_27_POI_38() [3, 5]
		MEETS {
			Visit_POI_38();
		}

		VALUE Move_POI_27_POI_26() [1, 1]
		MEETS {
			Visit_POI_26();
		}

		VALUE Move_POI_27_POI_37() [6, 8]
		MEETS {
			Visit_POI_37();
		}

		VALUE Move_POI_27_POI_25() [4, 6]
		MEETS {
			Visit_POI_25();
		}

		VALUE Move_POI_27_POI_36() [7, 11]
		MEETS {
			Visit_POI_36();
		}

		VALUE Move_POI_27_POI_35() [2, 4]
		MEETS {
			Visit_POI_35();
		}

		VALUE Move_POI_27_POI_34() [2, 2]
		MEETS {
			Visit_POI_34();
		}

		VALUE Move_POI_27_POI_33() [4, 6]
		MEETS {
			Visit_POI_33();
		}

		VALUE Move_POI_27_POI_44() [4, 6]
		MEETS {
			Visit_POI_44();
		}

		VALUE Move_POI_27_POI_32() [3, 5]
		MEETS {
			Visit_POI_32();
		}

		VALUE Move_POI_27_POI_43() [1, 1]
		MEETS {
			Visit_POI_43();
		}

		VALUE Move_POI_27_POI_31() [2, 2]
		MEETS {
			Visit_POI_31();
		}

		VALUE Move_POI_27_POI_42() [3, 5]
		MEETS {
			Visit_POI_42();
		}

		VALUE Move_POI_27_POI_30() [5, 7]
		MEETS {
			Visit_POI_30();
		}

		VALUE Move_POI_27_POI_41() [2, 4]
		MEETS {
			Visit_POI_41();
		}

		VALUE Move_POI_27_POI_40() [1, 1]
		MEETS {
			Visit_POI_40();
		}

		VALUE Visit_POI_38() [24, 36]
		MEETS {
			Move_POI_38_POI_29();
			Move_POI_38_POI_28();
			Move_POI_38_POI_39();
			Move_POI_38_POI_27();
			Move_POI_38_POI_26();
			Move_POI_38_POI_37();
			Move_POI_38_POI_25();
			Move_POI_38_POI_36();
			Move_POI_38_POI_35();
			Move_POI_38_POI_34();
			Move_POI_38_POI_33();
			Move_POI_38_POI_44();
			Move_POI_38_POI_32();
			Move_POI_38_POI_43();
			Move_POI_38_POI_31();
			Move_POI_38_POI_42();
			Move_POI_38_POI_30();
			Move_POI_38_POI_41();
			Move_POI_38_POI_40();
			Finish();
		}

		VALUE Move_POI_38_POI_29() [6, 8]
		MEETS {
			Visit_POI_29();
		}

		VALUE Move_POI_38_POI_28() [3, 5]
		MEETS {
			Visit_POI_28();
		}

		VALUE Move_POI_38_POI_39() [5, 7]
		MEETS {
			Visit_POI_39();
		}

		VALUE Move_POI_38_POI_27() [7, 11]
		MEETS {
			Visit_POI_27();
		}

		VALUE Move_POI_38_POI_26() [5, 7]
		MEETS {
			Visit_POI_26();
		}

		VALUE Move_POI_38_POI_37() [6, 10]
		MEETS {
			Visit_POI_37();
		}

		VALUE Move_POI_38_POI_25() [7, 11]
		MEETS {
			Visit_POI_25();
		}

		VALUE Move_POI_38_POI_36() [2, 4]
		MEETS {
			Visit_POI_36();
		}

		VALUE Move_POI_38_POI_35() [4, 6]
		MEETS {
			Visit_POI_35();
		}

		VALUE Move_POI_38_POI_34() [6, 8]
		MEETS {
			Visit_POI_34();
		}

		VALUE Move_POI_38_POI_33() [2, 2]
		MEETS {
			Visit_POI_33();
		}

		VALUE Move_POI_38_POI_44() [1, 1]
		MEETS {
			Visit_POI_44();
		}

		VALUE Move_POI_38_POI_32() [2, 2]
		MEETS {
			Visit_POI_32();
		}

		VALUE Move_POI_38_POI_43() [7, 11]
		MEETS {
			Visit_POI_43();
		}

		VALUE Move_POI_38_POI_31() [6, 8]
		MEETS {
			Visit_POI_31();
		}

		VALUE Move_POI_38_POI_42() [1, 1]
		MEETS {
			Visit_POI_42();
		}

		VALUE Move_POI_38_POI_30() [2, 2]
		MEETS {
			Visit_POI_30();
		}

		VALUE Move_POI_38_POI_41() [1, 1]
		MEETS {
			Visit_POI_41();
		}

		VALUE Move_POI_38_POI_40() [7, 11]
		MEETS {
			Visit_POI_40();
		}

		VALUE Visit_POI_26() [72, 108]
		MEETS {
			Move_POI_26_POI_29();
			Move_POI_26_POI_28();
			Move_POI_26_POI_39();
			Move_POI_26_POI_27();
			Move_POI_26_POI_38();
			Move_POI_26_POI_37();
			Move_POI_26_POI_25();
			Move_POI_26_POI_36();
			Move_POI_26_POI_35();
			Move_POI_26_POI_34();
			Move_POI_26_POI_33();
			Move_POI_26_POI_44();
			Move_POI_26_POI_32();
			Move_POI_26_POI_43();
			Move_POI_26_POI_31();
			Move_POI_26_POI_42();
			Move_POI_26_POI_30();
			Move_POI_26_POI_41();
			Move_POI_26_POI_40();
			Finish();
		}

		VALUE Move_POI_26_POI_29() [6, 8]
		MEETS {
			Visit_POI_29();
		}

		VALUE Move_POI_26_POI_28() [6, 10]
		MEETS {
			Visit_POI_28();
		}

		VALUE Move_POI_26_POI_39() [3, 5]
		MEETS {
			Visit_POI_39();
		}

		VALUE Move_POI_26_POI_27() [6, 8]
		MEETS {
			Visit_POI_27();
		}

		VALUE Move_POI_26_POI_38() [4, 6]
		MEETS {
			Visit_POI_38();
		}

		VALUE Move_POI_26_POI_37() [2, 2]
		MEETS {
			Visit_POI_37();
		}

		VALUE Move_POI_26_POI_25() [2, 4]
		MEETS {
			Visit_POI_25();
		}

		VALUE Move_POI_26_POI_36() [1, 1]
		MEETS {
			Visit_POI_36();
		}

		VALUE Move_POI_26_POI_35() [4, 6]
		MEETS {
			Visit_POI_35();
		}

		VALUE Move_POI_26_POI_34() [6, 10]
		MEETS {
			Visit_POI_34();
		}

		VALUE Move_POI_26_POI_33() [2, 2]
		MEETS {
			Visit_POI_33();
		}

		VALUE Move_POI_26_POI_44() [4, 6]
		MEETS {
			Visit_POI_44();
		}

		VALUE Move_POI_26_POI_32() [3, 5]
		MEETS {
			Visit_POI_32();
		}

		VALUE Move_POI_26_POI_43() [3, 5]
		MEETS {
			Visit_POI_43();
		}

		VALUE Move_POI_26_POI_31() [5, 7]
		MEETS {
			Visit_POI_31();
		}

		VALUE Move_POI_26_POI_42() [4, 6]
		MEETS {
			Visit_POI_42();
		}

		VALUE Move_POI_26_POI_30() [6, 8]
		MEETS {
			Visit_POI_30();
		}

		VALUE Move_POI_26_POI_41() [7, 11]
		MEETS {
			Visit_POI_41();
		}

		VALUE Move_POI_26_POI_40() [1, 1]
		MEETS {
			Visit_POI_40();
		}

		VALUE Visit_POI_37() [24, 36]
		MEETS {
			Move_POI_37_POI_29();
			Move_POI_37_POI_28();
			Move_POI_37_POI_39();
			Move_POI_37_POI_27();
			Move_POI_37_POI_38();
			Move_POI_37_POI_26();
			Move_POI_37_POI_25();
			Move_POI_37_POI_36();
			Move_POI_37_POI_35();
			Move_POI_37_POI_34();
			Move_POI_37_POI_33();
			Move_POI_37_POI_44();
			Move_POI_37_POI_32();
			Move_POI_37_POI_43();
			Move_POI_37_POI_31();
			Move_POI_37_POI_42();
			Move_POI_37_POI_30();
			Move_POI_37_POI_41();
			Move_POI_37_POI_40();
			Finish();
		}

		VALUE Move_POI_37_POI_29() [5, 7]
		MEETS {
			Visit_POI_29();
		}

		VALUE Move_POI_37_POI_28() [6, 10]
		MEETS {
			Visit_POI_28();
		}

		VALUE Move_POI_37_POI_39() [6, 8]
		MEETS {
			Visit_POI_39();
		}

		VALUE Move_POI_37_POI_27() [6, 8]
		MEETS {
			Visit_POI_27();
		}

		VALUE Move_POI_37_POI_38() [1, 1]
		MEETS {
			Visit_POI_38();
		}

		VALUE Move_POI_37_POI_26() [6, 10]
		MEETS {
			Visit_POI_26();
		}

		VALUE Move_POI_37_POI_25() [1, 1]
		MEETS {
			Visit_POI_25();
		}

		VALUE Move_POI_37_POI_36() [4, 6]
		MEETS {
			Visit_POI_36();
		}

		VALUE Move_POI_37_POI_35() [7, 11]
		MEETS {
			Visit_POI_35();
		}

		VALUE Move_POI_37_POI_34() [4, 6]
		MEETS {
			Visit_POI_34();
		}

		VALUE Move_POI_37_POI_33() [1, 1]
		MEETS {
			Visit_POI_33();
		}

		VALUE Move_POI_37_POI_44() [6, 8]
		MEETS {
			Visit_POI_44();
		}

		VALUE Move_POI_37_POI_32() [6, 10]
		MEETS {
			Visit_POI_32();
		}

		VALUE Move_POI_37_POI_43() [5, 7]
		MEETS {
			Visit_POI_43();
		}

		VALUE Move_POI_37_POI_31() [5, 7]
		MEETS {
			Visit_POI_31();
		}

		VALUE Move_POI_37_POI_42() [7, 11]
		MEETS {
			Visit_POI_42();
		}

		VALUE Move_POI_37_POI_30() [4, 6]
		MEETS {
			Visit_POI_30();
		}

		VALUE Move_POI_37_POI_41() [6, 8]
		MEETS {
			Visit_POI_41();
		}

		VALUE Move_POI_37_POI_40() [4, 6]
		MEETS {
			Visit_POI_40();
		}

		VALUE Visit_POI_25() [24, 36]
		MEETS {
			Move_POI_25_POI_29();
			Move_POI_25_POI_28();
			Move_POI_25_POI_39();
			Move_POI_25_POI_27();
			Move_POI_25_POI_38();
			Move_POI_25_POI_26();
			Move_POI_25_POI_37();
			Move_POI_25_POI_36();
			Move_POI_25_POI_35();
			Move_POI_25_POI_34();
			Move_POI_25_POI_33();
			Move_POI_25_POI_44();
			Move_POI_25_POI_32();
			Move_POI_25_POI_43();
			Move_POI_25_POI_31();
			Move_POI_25_POI_42();
			Move_POI_25_POI_30();
			Move_POI_25_POI_41();
			Move_POI_25_POI_40();
			Finish();
		}

		VALUE Move_POI_25_POI_29() [1, 1]
		MEETS {
			Visit_POI_29();
		}

		VALUE Move_POI_25_POI_28() [5, 7]
		MEETS {
			Visit_POI_28();
		}

		VALUE Move_POI_25_POI_39() [2, 2]
		MEETS {
			Visit_POI_39();
		}

		VALUE Move_POI_25_POI_27() [6, 10]
		MEETS {
			Visit_POI_27();
		}

		VALUE Move_POI_25_POI_38() [6, 8]
		MEETS {
			Visit_POI_38();
		}

		VALUE Move_POI_25_POI_26() [3, 5]
		MEETS {
			Visit_POI_26();
		}

		VALUE Move_POI_25_POI_37() [6, 8]
		MEETS {
			Visit_POI_37();
		}

		VALUE Move_POI_25_POI_36() [4, 6]
		MEETS {
			Visit_POI_36();
		}

		VALUE Move_POI_25_POI_35() [3, 5]
		MEETS {
			Visit_POI_35();
		}

		VALUE Move_POI_25_POI_34() [1, 1]
		MEETS {
			Visit_POI_34();
		}

		VALUE Move_POI_25_POI_33() [3, 5]
		MEETS {
			Visit_POI_33();
		}

		VALUE Move_POI_25_POI_44() [1, 1]
		MEETS {
			Visit_POI_44();
		}

		VALUE Move_POI_25_POI_32() [4, 6]
		MEETS {
			Visit_POI_32();
		}

		VALUE Move_POI_25_POI_43() [2, 4]
		MEETS {
			Visit_POI_43();
		}

		VALUE Move_POI_25_POI_31() [5, 7]
		MEETS {
			Visit_POI_31();
		}

		VALUE Move_POI_25_POI_42() [6, 10]
		MEETS {
			Visit_POI_42();
		}

		VALUE Move_POI_25_POI_30() [5, 7]
		MEETS {
			Visit_POI_30();
		}

		VALUE Move_POI_25_POI_41() [3, 5]
		MEETS {
			Visit_POI_41();
		}

		VALUE Move_POI_25_POI_40() [2, 4]
		MEETS {
			Visit_POI_40();
		}

		VALUE Visit_POI_36() [8, 12]
		MEETS {
			Move_POI_36_POI_29();
			Move_POI_36_POI_28();
			Move_POI_36_POI_39();
			Move_POI_36_POI_27();
			Move_POI_36_POI_38();
			Move_POI_36_POI_26();
			Move_POI_36_POI_37();
			Move_POI_36_POI_25();
			Move_POI_36_POI_35();
			Move_POI_36_POI_34();
			Move_POI_36_POI_33();
			Move_POI_36_POI_44();
			Move_POI_36_POI_32();
			Move_POI_36_POI_43();
			Move_POI_36_POI_31();
			Move_POI_36_POI_42();
			Move_POI_36_POI_30();
			Move_POI_36_POI_41();
			Move_POI_36_POI_40();
			Finish();
		}

		VALUE Move_POI_36_POI_29() [1, 1]
		MEETS {
			Visit_POI_29();
		}

		VALUE Move_POI_36_POI_28() [6, 10]
		MEETS {
			Visit_POI_28();
		}

		VALUE Move_POI_36_POI_39() [2, 4]
		MEETS {
			Visit_POI_39();
		}

		VALUE Move_POI_36_POI_27() [5, 7]
		MEETS {
			Visit_POI_27();
		}

		VALUE Move_POI_36_POI_38() [6, 8]
		MEETS {
			Visit_POI_38();
		}

		VALUE Move_POI_36_POI_26() [6, 8]
		MEETS {
			Visit_POI_26();
		}

		VALUE Move_POI_36_POI_37() [3, 5]
		MEETS {
			Visit_POI_37();
		}

		VALUE Move_POI_36_POI_25() [2, 2]
		MEETS {
			Visit_POI_25();
		}

		VALUE Move_POI_36_POI_35() [4, 6]
		MEETS {
			Visit_POI_35();
		}

		VALUE Move_POI_36_POI_34() [7, 11]
		MEETS {
			Visit_POI_34();
		}

		VALUE Move_POI_36_POI_33() [6, 10]
		MEETS {
			Visit_POI_33();
		}

		VALUE Move_POI_36_POI_44() [2, 4]
		MEETS {
			Visit_POI_44();
		}

		VALUE Move_POI_36_POI_32() [3, 5]
		MEETS {
			Visit_POI_32();
		}

		VALUE Move_POI_36_POI_43() [4, 6]
		MEETS {
			Visit_POI_43();
		}

		VALUE Move_POI_36_POI_31() [5, 7]
		MEETS {
			Visit_POI_31();
		}

		VALUE Move_POI_36_POI_42() [5, 7]
		MEETS {
			Visit_POI_42();
		}

		VALUE Move_POI_36_POI_30() [6, 8]
		MEETS {
			Visit_POI_30();
		}

		VALUE Move_POI_36_POI_41() [1, 1]
		MEETS {
			Visit_POI_41();
		}

		VALUE Move_POI_36_POI_40() [1, 1]
		MEETS {
			Visit_POI_40();
		}

		VALUE Visit_POI_35() [24, 36]
		MEETS {
			Move_POI_35_POI_29();
			Move_POI_35_POI_28();
			Move_POI_35_POI_39();
			Move_POI_35_POI_27();
			Move_POI_35_POI_38();
			Move_POI_35_POI_26();
			Move_POI_35_POI_37();
			Move_POI_35_POI_25();
			Move_POI_35_POI_36();
			Move_POI_35_POI_34();
			Move_POI_35_POI_33();
			Move_POI_35_POI_44();
			Move_POI_35_POI_32();
			Move_POI_35_POI_43();
			Move_POI_35_POI_31();
			Move_POI_35_POI_42();
			Move_POI_35_POI_30();
			Move_POI_35_POI_41();
			Move_POI_35_POI_40();
			Finish();
		}

		VALUE Move_POI_35_POI_29() [2, 4]
		MEETS {
			Visit_POI_29();
		}

		VALUE Move_POI_35_POI_28() [4, 6]
		MEETS {
			Visit_POI_28();
		}

		VALUE Move_POI_35_POI_39() [3, 5]
		MEETS {
			Visit_POI_39();
		}

		VALUE Move_POI_35_POI_27() [2, 4]
		MEETS {
			Visit_POI_27();
		}

		VALUE Move_POI_35_POI_38() [2, 2]
		MEETS {
			Visit_POI_38();
		}

		VALUE Move_POI_35_POI_26() [6, 8]
		MEETS {
			Visit_POI_26();
		}

		VALUE Move_POI_35_POI_37() [7, 11]
		MEETS {
			Visit_POI_37();
		}

		VALUE Move_POI_35_POI_25() [4, 6]
		MEETS {
			Visit_POI_25();
		}

		VALUE Move_POI_35_POI_36() [6, 10]
		MEETS {
			Visit_POI_36();
		}

		VALUE Move_POI_35_POI_34() [7, 11]
		MEETS {
			Visit_POI_34();
		}

		VALUE Move_POI_35_POI_33() [4, 6]
		MEETS {
			Visit_POI_33();
		}

		VALUE Move_POI_35_POI_44() [2, 4]
		MEETS {
			Visit_POI_44();
		}

		VALUE Move_POI_35_POI_32() [1, 1]
		MEETS {
			Visit_POI_32();
		}

		VALUE Move_POI_35_POI_43() [7, 11]
		MEETS {
			Visit_POI_43();
		}

		VALUE Move_POI_35_POI_31() [2, 4]
		MEETS {
			Visit_POI_31();
		}

		VALUE Move_POI_35_POI_42() [2, 2]
		MEETS {
			Visit_POI_42();
		}

		VALUE Move_POI_35_POI_30() [7, 11]
		MEETS {
			Visit_POI_30();
		}

		VALUE Move_POI_35_POI_41() [2, 4]
		MEETS {
			Visit_POI_41();
		}

		VALUE Move_POI_35_POI_40() [5, 7]
		MEETS {
			Visit_POI_40();
		}

		VALUE Visit_POI_34() [8, 12]
		MEETS {
			Move_POI_34_POI_29();
			Move_POI_34_POI_28();
			Move_POI_34_POI_39();
			Move_POI_34_POI_27();
			Move_POI_34_POI_38();
			Move_POI_34_POI_26();
			Move_POI_34_POI_37();
			Move_POI_34_POI_25();
			Move_POI_34_POI_36();
			Move_POI_34_POI_35();
			Move_POI_34_POI_33();
			Move_POI_34_POI_44();
			Move_POI_34_POI_32();
			Move_POI_34_POI_43();
			Move_POI_34_POI_31();
			Move_POI_34_POI_42();
			Move_POI_34_POI_30();
			Move_POI_34_POI_41();
			Move_POI_34_POI_40();
			Finish();
		}

		VALUE Move_POI_34_POI_29() [2, 2]
		MEETS {
			Visit_POI_29();
		}

		VALUE Move_POI_34_POI_28() [6, 8]
		MEETS {
			Visit_POI_28();
		}

		VALUE Move_POI_34_POI_39() [1, 1]
		MEETS {
			Visit_POI_39();
		}

		VALUE Move_POI_34_POI_27() [2, 4]
		MEETS {
			Visit_POI_27();
		}

		VALUE Move_POI_34_POI_38() [4, 6]
		MEETS {
			Visit_POI_38();
		}

		VALUE Move_POI_34_POI_26() [6, 10]
		MEETS {
			Visit_POI_26();
		}

		VALUE Move_POI_34_POI_37() [4, 6]
		MEETS {
			Visit_POI_37();
		}

		VALUE Move_POI_34_POI_25() [7, 11]
		MEETS {
			Visit_POI_25();
		}

		VALUE Move_POI_34_POI_36() [2, 4]
		MEETS {
			Visit_POI_36();
		}

		VALUE Move_POI_34_POI_35() [1, 1]
		MEETS {
			Visit_POI_35();
		}

		VALUE Move_POI_34_POI_33() [6, 8]
		MEETS {
			Visit_POI_33();
		}

		VALUE Move_POI_34_POI_44() [3, 5]
		MEETS {
			Visit_POI_44();
		}

		VALUE Move_POI_34_POI_32() [7, 11]
		MEETS {
			Visit_POI_32();
		}

		VALUE Move_POI_34_POI_43() [6, 10]
		MEETS {
			Visit_POI_43();
		}

		VALUE Move_POI_34_POI_31() [6, 8]
		MEETS {
			Visit_POI_31();
		}

		VALUE Move_POI_34_POI_42() [2, 2]
		MEETS {
			Visit_POI_42();
		}

		VALUE Move_POI_34_POI_30() [5, 7]
		MEETS {
			Visit_POI_30();
		}

		VALUE Move_POI_34_POI_41() [4, 6]
		MEETS {
			Visit_POI_41();
		}

		VALUE Move_POI_34_POI_40() [2, 2]
		MEETS {
			Visit_POI_40();
		}

		VALUE Visit_POI_33() [16, 24]
		MEETS {
			Move_POI_33_POI_29();
			Move_POI_33_POI_28();
			Move_POI_33_POI_39();
			Move_POI_33_POI_27();
			Move_POI_33_POI_38();
			Move_POI_33_POI_26();
			Move_POI_33_POI_37();
			Move_POI_33_POI_25();
			Move_POI_33_POI_36();
			Move_POI_33_POI_35();
			Move_POI_33_POI_34();
			Move_POI_33_POI_44();
			Move_POI_33_POI_32();
			Move_POI_33_POI_43();
			Move_POI_33_POI_31();
			Move_POI_33_POI_42();
			Move_POI_33_POI_30();
			Move_POI_33_POI_41();
			Move_POI_33_POI_40();
			Finish();
		}

		VALUE Move_POI_33_POI_29() [6, 8]
		MEETS {
			Visit_POI_29();
		}

		VALUE Move_POI_33_POI_28() [2, 2]
		MEETS {
			Visit_POI_28();
		}

		VALUE Move_POI_33_POI_39() [3, 5]
		MEETS {
			Visit_POI_39();
		}

		VALUE Move_POI_33_POI_27() [5, 7]
		MEETS {
			Visit_POI_27();
		}

		VALUE Move_POI_33_POI_38() [3, 5]
		MEETS {
			Visit_POI_38();
		}

		VALUE Move_POI_33_POI_26() [1, 1]
		MEETS {
			Visit_POI_26();
		}

		VALUE Move_POI_33_POI_37() [3, 5]
		MEETS {
			Visit_POI_37();
		}

		VALUE Move_POI_33_POI_25() [1, 1]
		MEETS {
			Visit_POI_25();
		}

		VALUE Move_POI_33_POI_36() [1, 1]
		MEETS {
			Visit_POI_36();
		}

		VALUE Move_POI_33_POI_35() [4, 6]
		MEETS {
			Visit_POI_35();
		}

		VALUE Move_POI_33_POI_34() [1, 1]
		MEETS {
			Visit_POI_34();
		}

		VALUE Move_POI_33_POI_44() [3, 5]
		MEETS {
			Visit_POI_44();
		}

		VALUE Move_POI_33_POI_32() [5, 7]
		MEETS {
			Visit_POI_32();
		}

		VALUE Move_POI_33_POI_43() [6, 10]
		MEETS {
			Visit_POI_43();
		}

		VALUE Move_POI_33_POI_31() [1, 1]
		MEETS {
			Visit_POI_31();
		}

		VALUE Move_POI_33_POI_42() [1, 1]
		MEETS {
			Visit_POI_42();
		}

		VALUE Move_POI_33_POI_30() [6, 8]
		MEETS {
			Visit_POI_30();
		}

		VALUE Move_POI_33_POI_41() [2, 4]
		MEETS {
			Visit_POI_41();
		}

		VALUE Move_POI_33_POI_40() [3, 5]
		MEETS {
			Visit_POI_40();
		}

		VALUE Visit_POI_44() [8, 12]
		MEETS {
			Move_POI_44_POI_29();
			Move_POI_44_POI_28();
			Move_POI_44_POI_39();
			Move_POI_44_POI_27();
			Move_POI_44_POI_38();
			Move_POI_44_POI_26();
			Move_POI_44_POI_37();
			Move_POI_44_POI_25();
			Move_POI_44_POI_36();
			Move_POI_44_POI_35();
			Move_POI_44_POI_34();
			Move_POI_44_POI_33();
			Move_POI_44_POI_32();
			Move_POI_44_POI_43();
			Move_POI_44_POI_31();
			Move_POI_44_POI_42();
			Move_POI_44_POI_30();
			Move_POI_44_POI_41();
			Move_POI_44_POI_40();
			Finish();
		}

		VALUE Move_POI_44_POI_29() [3, 5]
		MEETS {
			Visit_POI_29();
		}

		VALUE Move_POI_44_POI_28() [6, 10]
		MEETS {
			Visit_POI_28();
		}

		VALUE Move_POI_44_POI_39() [5, 7]
		MEETS {
			Visit_POI_39();
		}

		VALUE Move_POI_44_POI_27() [4, 6]
		MEETS {
			Visit_POI_27();
		}

		VALUE Move_POI_44_POI_38() [6, 8]
		MEETS {
			Visit_POI_38();
		}

		VALUE Move_POI_44_POI_26() [6, 10]
		MEETS {
			Visit_POI_26();
		}

		VALUE Move_POI_44_POI_37() [4, 6]
		MEETS {
			Visit_POI_37();
		}

		VALUE Move_POI_44_POI_25() [4, 6]
		MEETS {
			Visit_POI_25();
		}

		VALUE Move_POI_44_POI_36() [5, 7]
		MEETS {
			Visit_POI_36();
		}

		VALUE Move_POI_44_POI_35() [5, 7]
		MEETS {
			Visit_POI_35();
		}

		VALUE Move_POI_44_POI_34() [3, 5]
		MEETS {
			Visit_POI_34();
		}

		VALUE Move_POI_44_POI_33() [6, 10]
		MEETS {
			Visit_POI_33();
		}

		VALUE Move_POI_44_POI_32() [2, 4]
		MEETS {
			Visit_POI_32();
		}

		VALUE Move_POI_44_POI_43() [6, 10]
		MEETS {
			Visit_POI_43();
		}

		VALUE Move_POI_44_POI_31() [7, 11]
		MEETS {
			Visit_POI_31();
		}

		VALUE Move_POI_44_POI_42() [2, 4]
		MEETS {
			Visit_POI_42();
		}

		VALUE Move_POI_44_POI_30() [6, 10]
		MEETS {
			Visit_POI_30();
		}

		VALUE Move_POI_44_POI_41() [2, 4]
		MEETS {
			Visit_POI_41();
		}

		VALUE Move_POI_44_POI_40() [1, 1]
		MEETS {
			Visit_POI_40();
		}

		VALUE Visit_POI_32() [24, 36]
		MEETS {
			Move_POI_32_POI_29();
			Move_POI_32_POI_28();
			Move_POI_32_POI_39();
			Move_POI_32_POI_27();
			Move_POI_32_POI_38();
			Move_POI_32_POI_26();
			Move_POI_32_POI_37();
			Move_POI_32_POI_25();
			Move_POI_32_POI_36();
			Move_POI_32_POI_35();
			Move_POI_32_POI_34();
			Move_POI_32_POI_33();
			Move_POI_32_POI_44();
			Move_POI_32_POI_43();
			Move_POI_32_POI_31();
			Move_POI_32_POI_42();
			Move_POI_32_POI_30();
			Move_POI_32_POI_41();
			Move_POI_32_POI_40();
			Finish();
		}

		VALUE Move_POI_32_POI_29() [3, 5]
		MEETS {
			Visit_POI_29();
		}

		VALUE Move_POI_32_POI_28() [2, 4]
		MEETS {
			Visit_POI_28();
		}

		VALUE Move_POI_32_POI_39() [1, 1]
		MEETS {
			Visit_POI_39();
		}

		VALUE Move_POI_32_POI_27() [6, 8]
		MEETS {
			Visit_POI_27();
		}

		VALUE Move_POI_32_POI_38() [2, 2]
		MEETS {
			Visit_POI_38();
		}

		VALUE Move_POI_32_POI_26() [2, 2]
		MEETS {
			Visit_POI_26();
		}

		VALUE Move_POI_32_POI_37() [5, 7]
		MEETS {
			Visit_POI_37();
		}

		VALUE Move_POI_32_POI_25() [4, 6]
		MEETS {
			Visit_POI_25();
		}

		VALUE Move_POI_32_POI_36() [7, 11]
		MEETS {
			Visit_POI_36();
		}

		VALUE Move_POI_32_POI_35() [6, 10]
		MEETS {
			Visit_POI_35();
		}

		VALUE Move_POI_32_POI_34() [2, 2]
		MEETS {
			Visit_POI_34();
		}

		VALUE Move_POI_32_POI_33() [6, 8]
		MEETS {
			Visit_POI_33();
		}

		VALUE Move_POI_32_POI_44() [5, 7]
		MEETS {
			Visit_POI_44();
		}

		VALUE Move_POI_32_POI_43() [2, 2]
		MEETS {
			Visit_POI_43();
		}

		VALUE Move_POI_32_POI_31() [6, 8]
		MEETS {
			Visit_POI_31();
		}

		VALUE Move_POI_32_POI_42() [3, 5]
		MEETS {
			Visit_POI_42();
		}

		VALUE Move_POI_32_POI_30() [2, 4]
		MEETS {
			Visit_POI_30();
		}

		VALUE Move_POI_32_POI_41() [3, 5]
		MEETS {
			Visit_POI_41();
		}

		VALUE Move_POI_32_POI_40() [2, 4]
		MEETS {
			Visit_POI_40();
		}

		VALUE Visit_POI_43() [24, 36]
		MEETS {
			Move_POI_43_POI_29();
			Move_POI_43_POI_28();
			Move_POI_43_POI_39();
			Move_POI_43_POI_27();
			Move_POI_43_POI_38();
			Move_POI_43_POI_26();
			Move_POI_43_POI_37();
			Move_POI_43_POI_25();
			Move_POI_43_POI_36();
			Move_POI_43_POI_35();
			Move_POI_43_POI_34();
			Move_POI_43_POI_33();
			Move_POI_43_POI_44();
			Move_POI_43_POI_32();
			Move_POI_43_POI_31();
			Move_POI_43_POI_42();
			Move_POI_43_POI_30();
			Move_POI_43_POI_41();
			Move_POI_43_POI_40();
			Finish();
		}

		VALUE Move_POI_43_POI_29() [3, 5]
		MEETS {
			Visit_POI_29();
		}

		VALUE Move_POI_43_POI_28() [7, 11]
		MEETS {
			Visit_POI_28();
		}

		VALUE Move_POI_43_POI_39() [6, 10]
		MEETS {
			Visit_POI_39();
		}

		VALUE Move_POI_43_POI_27() [3, 5]
		MEETS {
			Visit_POI_27();
		}

		VALUE Move_POI_43_POI_38() [6, 10]
		MEETS {
			Visit_POI_38();
		}

		VALUE Move_POI_43_POI_26() [2, 4]
		MEETS {
			Visit_POI_26();
		}

		VALUE Move_POI_43_POI_37() [6, 10]
		MEETS {
			Visit_POI_37();
		}

		VALUE Move_POI_43_POI_25() [1, 1]
		MEETS {
			Visit_POI_25();
		}

		VALUE Move_POI_43_POI_36() [2, 2]
		MEETS {
			Visit_POI_36();
		}

		VALUE Move_POI_43_POI_35() [4, 6]
		MEETS {
			Visit_POI_35();
		}

		VALUE Move_POI_43_POI_34() [2, 2]
		MEETS {
			Visit_POI_34();
		}

		VALUE Move_POI_43_POI_33() [3, 5]
		MEETS {
			Visit_POI_33();
		}

		VALUE Move_POI_43_POI_44() [7, 11]
		MEETS {
			Visit_POI_44();
		}

		VALUE Move_POI_43_POI_32() [2, 2]
		MEETS {
			Visit_POI_32();
		}

		VALUE Move_POI_43_POI_31() [2, 2]
		MEETS {
			Visit_POI_31();
		}

		VALUE Move_POI_43_POI_42() [3, 5]
		MEETS {
			Visit_POI_42();
		}

		VALUE Move_POI_43_POI_30() [2, 2]
		MEETS {
			Visit_POI_30();
		}

		VALUE Move_POI_43_POI_41() [5, 7]
		MEETS {
			Visit_POI_41();
		}

		VALUE Move_POI_43_POI_40() [2, 4]
		MEETS {
			Visit_POI_40();
		}

		VALUE Visit_POI_31() [8, 12]
		MEETS {
			Move_POI_31_POI_29();
			Move_POI_31_POI_28();
			Move_POI_31_POI_39();
			Move_POI_31_POI_27();
			Move_POI_31_POI_38();
			Move_POI_31_POI_26();
			Move_POI_31_POI_37();
			Move_POI_31_POI_25();
			Move_POI_31_POI_36();
			Move_POI_31_POI_35();
			Move_POI_31_POI_34();
			Move_POI_31_POI_33();
			Move_POI_31_POI_44();
			Move_POI_31_POI_32();
			Move_POI_31_POI_43();
			Move_POI_31_POI_42();
			Move_POI_31_POI_30();
			Move_POI_31_POI_41();
			Move_POI_31_POI_40();
			Finish();
		}

		VALUE Move_POI_31_POI_29() [5, 7]
		MEETS {
			Visit_POI_29();
		}

		VALUE Move_POI_31_POI_28() [2, 4]
		MEETS {
			Visit_POI_28();
		}

		VALUE Move_POI_31_POI_39() [7, 11]
		MEETS {
			Visit_POI_39();
		}

		VALUE Move_POI_31_POI_27() [3, 5]
		MEETS {
			Visit_POI_27();
		}

		VALUE Move_POI_31_POI_38() [5, 7]
		MEETS {
			Visit_POI_38();
		}

		VALUE Move_POI_31_POI_26() [3, 5]
		MEETS {
			Visit_POI_26();
		}

		VALUE Move_POI_31_POI_37() [7, 11]
		MEETS {
			Visit_POI_37();
		}

		VALUE Move_POI_31_POI_25() [5, 7]
		MEETS {
			Visit_POI_25();
		}

		VALUE Move_POI_31_POI_36() [4, 6]
		MEETS {
			Visit_POI_36();
		}

		VALUE Move_POI_31_POI_35() [1, 1]
		MEETS {
			Visit_POI_35();
		}

		VALUE Move_POI_31_POI_34() [6, 10]
		MEETS {
			Visit_POI_34();
		}

		VALUE Move_POI_31_POI_33() [7, 11]
		MEETS {
			Visit_POI_33();
		}

		VALUE Move_POI_31_POI_44() [6, 10]
		MEETS {
			Visit_POI_44();
		}

		VALUE Move_POI_31_POI_32() [1, 1]
		MEETS {
			Visit_POI_32();
		}

		VALUE Move_POI_31_POI_43() [7, 11]
		MEETS {
			Visit_POI_43();
		}

		VALUE Move_POI_31_POI_42() [5, 7]
		MEETS {
			Visit_POI_42();
		}

		VALUE Move_POI_31_POI_30() [1, 1]
		MEETS {
			Visit_POI_30();
		}

		VALUE Move_POI_31_POI_41() [2, 4]
		MEETS {
			Visit_POI_41();
		}

		VALUE Move_POI_31_POI_40() [6, 10]
		MEETS {
			Visit_POI_40();
		}

		VALUE Visit_POI_42() [24, 36]
		MEETS {
			Move_POI_42_POI_29();
			Move_POI_42_POI_28();
			Move_POI_42_POI_39();
			Move_POI_42_POI_27();
			Move_POI_42_POI_38();
			Move_POI_42_POI_26();
			Move_POI_42_POI_37();
			Move_POI_42_POI_25();
			Move_POI_42_POI_36();
			Move_POI_42_POI_35();
			Move_POI_42_POI_34();
			Move_POI_42_POI_33();
			Move_POI_42_POI_44();
			Move_POI_42_POI_32();
			Move_POI_42_POI_43();
			Move_POI_42_POI_31();
			Move_POI_42_POI_30();
			Move_POI_42_POI_41();
			Move_POI_42_POI_40();
			Finish();
		}

		VALUE Move_POI_42_POI_29() [6, 10]
		MEETS {
			Visit_POI_29();
		}

		VALUE Move_POI_42_POI_28() [2, 2]
		MEETS {
			Visit_POI_28();
		}

		VALUE Move_POI_42_POI_39() [6, 10]
		MEETS {
			Visit_POI_39();
		}

		VALUE Move_POI_42_POI_27() [5, 7]
		MEETS {
			Visit_POI_27();
		}

		VALUE Move_POI_42_POI_38() [1, 1]
		MEETS {
			Visit_POI_38();
		}

		VALUE Move_POI_42_POI_26() [7, 11]
		MEETS {
			Visit_POI_26();
		}

		VALUE Move_POI_42_POI_37() [7, 11]
		MEETS {
			Visit_POI_37();
		}

		VALUE Move_POI_42_POI_25() [6, 10]
		MEETS {
			Visit_POI_25();
		}

		VALUE Move_POI_42_POI_36() [7, 11]
		MEETS {
			Visit_POI_36();
		}

		VALUE Move_POI_42_POI_35() [2, 4]
		MEETS {
			Visit_POI_35();
		}

		VALUE Move_POI_42_POI_34() [6, 10]
		MEETS {
			Visit_POI_34();
		}

		VALUE Move_POI_42_POI_33() [2, 2]
		MEETS {
			Visit_POI_33();
		}

		VALUE Move_POI_42_POI_44() [5, 7]
		MEETS {
			Visit_POI_44();
		}

		VALUE Move_POI_42_POI_32() [6, 8]
		MEETS {
			Visit_POI_32();
		}

		VALUE Move_POI_42_POI_43() [6, 10]
		MEETS {
			Visit_POI_43();
		}

		VALUE Move_POI_42_POI_31() [6, 10]
		MEETS {
			Visit_POI_31();
		}

		VALUE Move_POI_42_POI_30() [6, 10]
		MEETS {
			Visit_POI_30();
		}

		VALUE Move_POI_42_POI_41() [3, 5]
		MEETS {
			Visit_POI_41();
		}

		VALUE Move_POI_42_POI_40() [2, 2]
		MEETS {
			Visit_POI_40();
		}

		VALUE Visit_POI_30() [24, 36]
		MEETS {
			Move_POI_30_POI_29();
			Move_POI_30_POI_28();
			Move_POI_30_POI_39();
			Move_POI_30_POI_27();
			Move_POI_30_POI_38();
			Move_POI_30_POI_26();
			Move_POI_30_POI_37();
			Move_POI_30_POI_25();
			Move_POI_30_POI_36();
			Move_POI_30_POI_35();
			Move_POI_30_POI_34();
			Move_POI_30_POI_33();
			Move_POI_30_POI_44();
			Move_POI_30_POI_32();
			Move_POI_30_POI_43();
			Move_POI_30_POI_31();
			Move_POI_30_POI_42();
			Move_POI_30_POI_41();
			Move_POI_30_POI_40();
			Finish();
		}

		VALUE Move_POI_30_POI_29() [2, 2]
		MEETS {
			Visit_POI_29();
		}

		VALUE Move_POI_30_POI_28() [6, 10]
		MEETS {
			Visit_POI_28();
		}

		VALUE Move_POI_30_POI_39() [5, 7]
		MEETS {
			Visit_POI_39();
		}

		VALUE Move_POI_30_POI_27() [4, 6]
		MEETS {
			Visit_POI_27();
		}

		VALUE Move_POI_30_POI_38() [7, 11]
		MEETS {
			Visit_POI_38();
		}

		VALUE Move_POI_30_POI_26() [5, 7]
		MEETS {
			Visit_POI_26();
		}

		VALUE Move_POI_30_POI_37() [5, 7]
		MEETS {
			Visit_POI_37();
		}

		VALUE Move_POI_30_POI_25() [3, 5]
		MEETS {
			Visit_POI_25();
		}

		VALUE Move_POI_30_POI_36() [6, 10]
		MEETS {
			Visit_POI_36();
		}

		VALUE Move_POI_30_POI_35() [4, 6]
		MEETS {
			Visit_POI_35();
		}

		VALUE Move_POI_30_POI_34() [6, 8]
		MEETS {
			Visit_POI_34();
		}

		VALUE Move_POI_30_POI_33() [1, 1]
		MEETS {
			Visit_POI_33();
		}

		VALUE Move_POI_30_POI_44() [3, 5]
		MEETS {
			Visit_POI_44();
		}

		VALUE Move_POI_30_POI_32() [1, 1]
		MEETS {
			Visit_POI_32();
		}

		VALUE Move_POI_30_POI_43() [2, 4]
		MEETS {
			Visit_POI_43();
		}

		VALUE Move_POI_30_POI_31() [7, 11]
		MEETS {
			Visit_POI_31();
		}

		VALUE Move_POI_30_POI_42() [1, 1]
		MEETS {
			Visit_POI_42();
		}

		VALUE Move_POI_30_POI_41() [4, 6]
		MEETS {
			Visit_POI_41();
		}

		VALUE Move_POI_30_POI_40() [2, 2]
		MEETS {
			Visit_POI_40();
		}

		VALUE Visit_POI_41() [12, 18]
		MEETS {
			Move_POI_41_POI_29();
			Move_POI_41_POI_28();
			Move_POI_41_POI_39();
			Move_POI_41_POI_27();
			Move_POI_41_POI_38();
			Move_POI_41_POI_26();
			Move_POI_41_POI_37();
			Move_POI_41_POI_25();
			Move_POI_41_POI_36();
			Move_POI_41_POI_35();
			Move_POI_41_POI_34();
			Move_POI_41_POI_33();
			Move_POI_41_POI_44();
			Move_POI_41_POI_32();
			Move_POI_41_POI_43();
			Move_POI_41_POI_31();
			Move_POI_41_POI_42();
			Move_POI_41_POI_30();
			Move_POI_41_POI_40();
			Finish();
		}

		VALUE Move_POI_41_POI_29() [5, 7]
		MEETS {
			Visit_POI_29();
		}

		VALUE Move_POI_41_POI_28() [2, 4]
		MEETS {
			Visit_POI_28();
		}

		VALUE Move_POI_41_POI_39() [5, 7]
		MEETS {
			Visit_POI_39();
		}

		VALUE Move_POI_41_POI_27() [6, 10]
		MEETS {
			Visit_POI_27();
		}

		VALUE Move_POI_41_POI_38() [1, 1]
		MEETS {
			Visit_POI_38();
		}

		VALUE Move_POI_41_POI_26() [6, 10]
		MEETS {
			Visit_POI_26();
		}

		VALUE Move_POI_41_POI_37() [5, 7]
		MEETS {
			Visit_POI_37();
		}

		VALUE Move_POI_41_POI_25() [1, 1]
		MEETS {
			Visit_POI_25();
		}

		VALUE Move_POI_41_POI_36() [3, 5]
		MEETS {
			Visit_POI_36();
		}

		VALUE Move_POI_41_POI_35() [4, 6]
		MEETS {
			Visit_POI_35();
		}

		VALUE Move_POI_41_POI_34() [6, 10]
		MEETS {
			Visit_POI_34();
		}

		VALUE Move_POI_41_POI_33() [3, 5]
		MEETS {
			Visit_POI_33();
		}

		VALUE Move_POI_41_POI_44() [3, 5]
		MEETS {
			Visit_POI_44();
		}

		VALUE Move_POI_41_POI_32() [5, 7]
		MEETS {
			Visit_POI_32();
		}

		VALUE Move_POI_41_POI_43() [7, 11]
		MEETS {
			Visit_POI_43();
		}

		VALUE Move_POI_41_POI_31() [4, 6]
		MEETS {
			Visit_POI_31();
		}

		VALUE Move_POI_41_POI_42() [1, 1]
		MEETS {
			Visit_POI_42();
		}

		VALUE Move_POI_41_POI_30() [2, 4]
		MEETS {
			Visit_POI_30();
		}

		VALUE Move_POI_41_POI_40() [1, 1]
		MEETS {
			Visit_POI_40();
		}

		VALUE Visit_POI_40() [8, 12]
		MEETS {
			Move_POI_40_POI_29();
			Move_POI_40_POI_28();
			Move_POI_40_POI_39();
			Move_POI_40_POI_27();
			Move_POI_40_POI_38();
			Move_POI_40_POI_26();
			Move_POI_40_POI_37();
			Move_POI_40_POI_25();
			Move_POI_40_POI_36();
			Move_POI_40_POI_35();
			Move_POI_40_POI_34();
			Move_POI_40_POI_33();
			Move_POI_40_POI_44();
			Move_POI_40_POI_32();
			Move_POI_40_POI_43();
			Move_POI_40_POI_31();
			Move_POI_40_POI_42();
			Move_POI_40_POI_30();
			Move_POI_40_POI_41();
			Finish();
		}

		VALUE Move_POI_40_POI_29() [7, 11]
		MEETS {
			Visit_POI_29();
		}

		VALUE Move_POI_40_POI_28() [2, 2]
		MEETS {
			Visit_POI_28();
		}

		VALUE Move_POI_40_POI_39() [2, 4]
		MEETS {
			Visit_POI_39();
		}

		VALUE Move_POI_40_POI_27() [7, 11]
		MEETS {
			Visit_POI_27();
		}

		VALUE Move_POI_40_POI_38() [6, 8]
		MEETS {
			Visit_POI_38();
		}

		VALUE Move_POI_40_POI_26() [7, 11]
		MEETS {
			Visit_POI_26();
		}

		VALUE Move_POI_40_POI_37() [5, 7]
		MEETS {
			Visit_POI_37();
		}

		VALUE Move_POI_40_POI_25() [6, 10]
		MEETS {
			Visit_POI_25();
		}

		VALUE Move_POI_40_POI_36() [3, 5]
		MEETS {
			Visit_POI_36();
		}

		VALUE Move_POI_40_POI_35() [7, 11]
		MEETS {
			Visit_POI_35();
		}

		VALUE Move_POI_40_POI_34() [4, 6]
		MEETS {
			Visit_POI_34();
		}

		VALUE Move_POI_40_POI_33() [1, 1]
		MEETS {
			Visit_POI_33();
		}

		VALUE Move_POI_40_POI_44() [6, 10]
		MEETS {
			Visit_POI_44();
		}

		VALUE Move_POI_40_POI_32() [5, 7]
		MEETS {
			Visit_POI_32();
		}

		VALUE Move_POI_40_POI_43() [1, 1]
		MEETS {
			Visit_POI_43();
		}

		VALUE Move_POI_40_POI_31() [6, 8]
		MEETS {
			Visit_POI_31();
		}

		VALUE Move_POI_40_POI_42() [4, 6]
		MEETS {
			Visit_POI_42();
		}

		VALUE Move_POI_40_POI_30() [6, 8]
		MEETS {
			Visit_POI_30();
		}

		VALUE Move_POI_40_POI_41() [4, 6]
		MEETS {
			Visit_POI_41();
		}


	}

	COMP_TYPE SingletonStateVariable TripWindowType(None(), Visit()) {

		VALUE None() [1, 1]
		MEETS {
			Visit();
		}

		VALUE Visit() [240, 240]
		MEETS {
			None();
		}


	}

	COMPONENT TripPlanning {FLEXIBLE decisions(functional)} : PlanningDecisionType;
	COMPONENT TripPath {FLEXIBLE hops(primitive)} : TripPathType;
	COMPONENT TripWindow {FLEXIBLE visit(uncontrollable)} : TripWindowType;


	SYNCHRONIZE TripPlanning.decisions {

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_29();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_28();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_39();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_27();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_38();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_26();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_37();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_25();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_36();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_35();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_34();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_33();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_44();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_32();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_43();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_31();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_42();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_30();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_41();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_40();
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

