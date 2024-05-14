DOMAIN TRIP_PLANNING {

	TEMPORAL_MODULE tm = [0, 267], 1000;

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
		 Visit_POI_49(), Move_Home_POI_49(), Move_POI_49_POI_48(), Move_POI_49_POI_59(), Move_POI_49_POI_47(), Move_POI_49_POI_58(), Move_POI_49_POI_46(), Move_POI_49_POI_57(), Move_POI_49_POI_45(), Move_POI_49_POI_56(), Move_POI_49_POI_55(), Move_POI_49_POI_54(), Move_POI_49_POI_53(), Move_POI_49_POI_64(), Move_POI_49_POI_52(), Move_POI_49_POI_63(), Move_POI_49_POI_51(), Move_POI_49_POI_62(), Move_POI_49_POI_50(), Move_POI_49_POI_61(), Move_POI_49_POI_60(), 
		 Visit_POI_48(), Move_Home_POI_48(), Move_POI_48_POI_49(), Move_POI_48_POI_59(), Move_POI_48_POI_47(), Move_POI_48_POI_58(), Move_POI_48_POI_46(), Move_POI_48_POI_57(), Move_POI_48_POI_45(), Move_POI_48_POI_56(), Move_POI_48_POI_55(), Move_POI_48_POI_54(), Move_POI_48_POI_53(), Move_POI_48_POI_64(), Move_POI_48_POI_52(), Move_POI_48_POI_63(), Move_POI_48_POI_51(), Move_POI_48_POI_62(), Move_POI_48_POI_50(), Move_POI_48_POI_61(), Move_POI_48_POI_60(), 
		 Visit_POI_59(), Move_Home_POI_59(), Move_POI_59_POI_49(), Move_POI_59_POI_48(), Move_POI_59_POI_47(), Move_POI_59_POI_58(), Move_POI_59_POI_46(), Move_POI_59_POI_57(), Move_POI_59_POI_45(), Move_POI_59_POI_56(), Move_POI_59_POI_55(), Move_POI_59_POI_54(), Move_POI_59_POI_53(), Move_POI_59_POI_64(), Move_POI_59_POI_52(), Move_POI_59_POI_63(), Move_POI_59_POI_51(), Move_POI_59_POI_62(), Move_POI_59_POI_50(), Move_POI_59_POI_61(), Move_POI_59_POI_60(), 
		 Visit_POI_47(), Move_Home_POI_47(), Move_POI_47_POI_49(), Move_POI_47_POI_48(), Move_POI_47_POI_59(), Move_POI_47_POI_58(), Move_POI_47_POI_46(), Move_POI_47_POI_57(), Move_POI_47_POI_45(), Move_POI_47_POI_56(), Move_POI_47_POI_55(), Move_POI_47_POI_54(), Move_POI_47_POI_53(), Move_POI_47_POI_64(), Move_POI_47_POI_52(), Move_POI_47_POI_63(), Move_POI_47_POI_51(), Move_POI_47_POI_62(), Move_POI_47_POI_50(), Move_POI_47_POI_61(), Move_POI_47_POI_60(), 
		 Visit_POI_58(), Move_Home_POI_58(), Move_POI_58_POI_49(), Move_POI_58_POI_48(), Move_POI_58_POI_59(), Move_POI_58_POI_47(), Move_POI_58_POI_46(), Move_POI_58_POI_57(), Move_POI_58_POI_45(), Move_POI_58_POI_56(), Move_POI_58_POI_55(), Move_POI_58_POI_54(), Move_POI_58_POI_53(), Move_POI_58_POI_64(), Move_POI_58_POI_52(), Move_POI_58_POI_63(), Move_POI_58_POI_51(), Move_POI_58_POI_62(), Move_POI_58_POI_50(), Move_POI_58_POI_61(), Move_POI_58_POI_60(), 
		 Visit_POI_46(), Move_Home_POI_46(), Move_POI_46_POI_49(), Move_POI_46_POI_48(), Move_POI_46_POI_59(), Move_POI_46_POI_47(), Move_POI_46_POI_58(), Move_POI_46_POI_57(), Move_POI_46_POI_45(), Move_POI_46_POI_56(), Move_POI_46_POI_55(), Move_POI_46_POI_54(), Move_POI_46_POI_53(), Move_POI_46_POI_64(), Move_POI_46_POI_52(), Move_POI_46_POI_63(), Move_POI_46_POI_51(), Move_POI_46_POI_62(), Move_POI_46_POI_50(), Move_POI_46_POI_61(), Move_POI_46_POI_60(), 
		 Visit_POI_57(), Move_Home_POI_57(), Move_POI_57_POI_49(), Move_POI_57_POI_48(), Move_POI_57_POI_59(), Move_POI_57_POI_47(), Move_POI_57_POI_58(), Move_POI_57_POI_46(), Move_POI_57_POI_45(), Move_POI_57_POI_56(), Move_POI_57_POI_55(), Move_POI_57_POI_54(), Move_POI_57_POI_53(), Move_POI_57_POI_64(), Move_POI_57_POI_52(), Move_POI_57_POI_63(), Move_POI_57_POI_51(), Move_POI_57_POI_62(), Move_POI_57_POI_50(), Move_POI_57_POI_61(), Move_POI_57_POI_60(), 
		 Visit_POI_45(), Move_Home_POI_45(), Move_POI_45_POI_49(), Move_POI_45_POI_48(), Move_POI_45_POI_59(), Move_POI_45_POI_47(), Move_POI_45_POI_58(), Move_POI_45_POI_46(), Move_POI_45_POI_57(), Move_POI_45_POI_56(), Move_POI_45_POI_55(), Move_POI_45_POI_54(), Move_POI_45_POI_53(), Move_POI_45_POI_64(), Move_POI_45_POI_52(), Move_POI_45_POI_63(), Move_POI_45_POI_51(), Move_POI_45_POI_62(), Move_POI_45_POI_50(), Move_POI_45_POI_61(), Move_POI_45_POI_60(), 
		 Visit_POI_56(), Move_Home_POI_56(), Move_POI_56_POI_49(), Move_POI_56_POI_48(), Move_POI_56_POI_59(), Move_POI_56_POI_47(), Move_POI_56_POI_58(), Move_POI_56_POI_46(), Move_POI_56_POI_57(), Move_POI_56_POI_45(), Move_POI_56_POI_55(), Move_POI_56_POI_54(), Move_POI_56_POI_53(), Move_POI_56_POI_64(), Move_POI_56_POI_52(), Move_POI_56_POI_63(), Move_POI_56_POI_51(), Move_POI_56_POI_62(), Move_POI_56_POI_50(), Move_POI_56_POI_61(), Move_POI_56_POI_60(), 
		 Visit_POI_55(), Move_Home_POI_55(), Move_POI_55_POI_49(), Move_POI_55_POI_48(), Move_POI_55_POI_59(), Move_POI_55_POI_47(), Move_POI_55_POI_58(), Move_POI_55_POI_46(), Move_POI_55_POI_57(), Move_POI_55_POI_45(), Move_POI_55_POI_56(), Move_POI_55_POI_54(), Move_POI_55_POI_53(), Move_POI_55_POI_64(), Move_POI_55_POI_52(), Move_POI_55_POI_63(), Move_POI_55_POI_51(), Move_POI_55_POI_62(), Move_POI_55_POI_50(), Move_POI_55_POI_61(), Move_POI_55_POI_60(), 
		 Visit_POI_54(), Move_Home_POI_54(), Move_POI_54_POI_49(), Move_POI_54_POI_48(), Move_POI_54_POI_59(), Move_POI_54_POI_47(), Move_POI_54_POI_58(), Move_POI_54_POI_46(), Move_POI_54_POI_57(), Move_POI_54_POI_45(), Move_POI_54_POI_56(), Move_POI_54_POI_55(), Move_POI_54_POI_53(), Move_POI_54_POI_64(), Move_POI_54_POI_52(), Move_POI_54_POI_63(), Move_POI_54_POI_51(), Move_POI_54_POI_62(), Move_POI_54_POI_50(), Move_POI_54_POI_61(), Move_POI_54_POI_60(), 
		 Visit_POI_53(), Move_Home_POI_53(), Move_POI_53_POI_49(), Move_POI_53_POI_48(), Move_POI_53_POI_59(), Move_POI_53_POI_47(), Move_POI_53_POI_58(), Move_POI_53_POI_46(), Move_POI_53_POI_57(), Move_POI_53_POI_45(), Move_POI_53_POI_56(), Move_POI_53_POI_55(), Move_POI_53_POI_54(), Move_POI_53_POI_64(), Move_POI_53_POI_52(), Move_POI_53_POI_63(), Move_POI_53_POI_51(), Move_POI_53_POI_62(), Move_POI_53_POI_50(), Move_POI_53_POI_61(), Move_POI_53_POI_60(), 
		 Visit_POI_64(), Move_Home_POI_64(), Move_POI_64_POI_49(), Move_POI_64_POI_48(), Move_POI_64_POI_59(), Move_POI_64_POI_47(), Move_POI_64_POI_58(), Move_POI_64_POI_46(), Move_POI_64_POI_57(), Move_POI_64_POI_45(), Move_POI_64_POI_56(), Move_POI_64_POI_55(), Move_POI_64_POI_54(), Move_POI_64_POI_53(), Move_POI_64_POI_52(), Move_POI_64_POI_63(), Move_POI_64_POI_51(), Move_POI_64_POI_62(), Move_POI_64_POI_50(), Move_POI_64_POI_61(), Move_POI_64_POI_60(), 
		 Visit_POI_52(), Move_Home_POI_52(), Move_POI_52_POI_49(), Move_POI_52_POI_48(), Move_POI_52_POI_59(), Move_POI_52_POI_47(), Move_POI_52_POI_58(), Move_POI_52_POI_46(), Move_POI_52_POI_57(), Move_POI_52_POI_45(), Move_POI_52_POI_56(), Move_POI_52_POI_55(), Move_POI_52_POI_54(), Move_POI_52_POI_53(), Move_POI_52_POI_64(), Move_POI_52_POI_63(), Move_POI_52_POI_51(), Move_POI_52_POI_62(), Move_POI_52_POI_50(), Move_POI_52_POI_61(), Move_POI_52_POI_60(), 
		 Visit_POI_63(), Move_Home_POI_63(), Move_POI_63_POI_49(), Move_POI_63_POI_48(), Move_POI_63_POI_59(), Move_POI_63_POI_47(), Move_POI_63_POI_58(), Move_POI_63_POI_46(), Move_POI_63_POI_57(), Move_POI_63_POI_45(), Move_POI_63_POI_56(), Move_POI_63_POI_55(), Move_POI_63_POI_54(), Move_POI_63_POI_53(), Move_POI_63_POI_64(), Move_POI_63_POI_52(), Move_POI_63_POI_51(), Move_POI_63_POI_62(), Move_POI_63_POI_50(), Move_POI_63_POI_61(), Move_POI_63_POI_60(), 
		 Visit_POI_51(), Move_Home_POI_51(), Move_POI_51_POI_49(), Move_POI_51_POI_48(), Move_POI_51_POI_59(), Move_POI_51_POI_47(), Move_POI_51_POI_58(), Move_POI_51_POI_46(), Move_POI_51_POI_57(), Move_POI_51_POI_45(), Move_POI_51_POI_56(), Move_POI_51_POI_55(), Move_POI_51_POI_54(), Move_POI_51_POI_53(), Move_POI_51_POI_64(), Move_POI_51_POI_52(), Move_POI_51_POI_63(), Move_POI_51_POI_62(), Move_POI_51_POI_50(), Move_POI_51_POI_61(), Move_POI_51_POI_60(), 
		 Visit_POI_62(), Move_Home_POI_62(), Move_POI_62_POI_49(), Move_POI_62_POI_48(), Move_POI_62_POI_59(), Move_POI_62_POI_47(), Move_POI_62_POI_58(), Move_POI_62_POI_46(), Move_POI_62_POI_57(), Move_POI_62_POI_45(), Move_POI_62_POI_56(), Move_POI_62_POI_55(), Move_POI_62_POI_54(), Move_POI_62_POI_53(), Move_POI_62_POI_64(), Move_POI_62_POI_52(), Move_POI_62_POI_63(), Move_POI_62_POI_51(), Move_POI_62_POI_50(), Move_POI_62_POI_61(), Move_POI_62_POI_60(), 
		 Visit_POI_50(), Move_Home_POI_50(), Move_POI_50_POI_49(), Move_POI_50_POI_48(), Move_POI_50_POI_59(), Move_POI_50_POI_47(), Move_POI_50_POI_58(), Move_POI_50_POI_46(), Move_POI_50_POI_57(), Move_POI_50_POI_45(), Move_POI_50_POI_56(), Move_POI_50_POI_55(), Move_POI_50_POI_54(), Move_POI_50_POI_53(), Move_POI_50_POI_64(), Move_POI_50_POI_52(), Move_POI_50_POI_63(), Move_POI_50_POI_51(), Move_POI_50_POI_62(), Move_POI_50_POI_61(), Move_POI_50_POI_60(), 
		 Visit_POI_61(), Move_Home_POI_61(), Move_POI_61_POI_49(), Move_POI_61_POI_48(), Move_POI_61_POI_59(), Move_POI_61_POI_47(), Move_POI_61_POI_58(), Move_POI_61_POI_46(), Move_POI_61_POI_57(), Move_POI_61_POI_45(), Move_POI_61_POI_56(), Move_POI_61_POI_55(), Move_POI_61_POI_54(), Move_POI_61_POI_53(), Move_POI_61_POI_64(), Move_POI_61_POI_52(), Move_POI_61_POI_63(), Move_POI_61_POI_51(), Move_POI_61_POI_62(), Move_POI_61_POI_50(), Move_POI_61_POI_60(), 
		 Visit_POI_60(), Move_Home_POI_60(), Move_POI_60_POI_49(), Move_POI_60_POI_48(), Move_POI_60_POI_59(), Move_POI_60_POI_47(), Move_POI_60_POI_58(), Move_POI_60_POI_46(), Move_POI_60_POI_57(), Move_POI_60_POI_45(), Move_POI_60_POI_56(), Move_POI_60_POI_55(), Move_POI_60_POI_54(), Move_POI_60_POI_53(), Move_POI_60_POI_64(), Move_POI_60_POI_52(), Move_POI_60_POI_63(), Move_POI_60_POI_51(), Move_POI_60_POI_62(), Move_POI_60_POI_50(), Move_POI_60_POI_61(), 
	) {

		VALUE Home() [1, 1]
		MEETS {
			Move_Home_POI_49();
			Move_Home_POI_48();
			Move_Home_POI_59();
			Move_Home_POI_47();
			Move_Home_POI_58();
			Move_Home_POI_46();
			Move_Home_POI_57();
			Move_Home_POI_45();
			Move_Home_POI_56();
			Move_Home_POI_55();
			Move_Home_POI_54();
			Move_Home_POI_53();
			Move_Home_POI_64();
			Move_Home_POI_52();
			Move_Home_POI_63();
			Move_Home_POI_51();
			Move_Home_POI_62();
			Move_Home_POI_50();
			Move_Home_POI_61();
			Move_Home_POI_60();
		}

		VALUE Finish() [1, +INF]
		MEETS {
			Home();
		}

		VALUE Move_Home_POI_49() [1, 1]
		MEETS {
			Visit_POI_49();
		}

		VALUE Move_Home_POI_48() [3, 5]
		MEETS {
			Visit_POI_48();
		}

		VALUE Move_Home_POI_59() [3, 5]
		MEETS {
			Visit_POI_59();
		}

		VALUE Move_Home_POI_47() [1, 1]
		MEETS {
			Visit_POI_47();
		}

		VALUE Move_Home_POI_58() [2, 2]
		MEETS {
			Visit_POI_58();
		}

		VALUE Move_Home_POI_46() [4, 6]
		MEETS {
			Visit_POI_46();
		}

		VALUE Move_Home_POI_57() [6, 8]
		MEETS {
			Visit_POI_57();
		}

		VALUE Move_Home_POI_45() [4, 6]
		MEETS {
			Visit_POI_45();
		}

		VALUE Move_Home_POI_56() [6, 10]
		MEETS {
			Visit_POI_56();
		}

		VALUE Move_Home_POI_55() [7, 11]
		MEETS {
			Visit_POI_55();
		}

		VALUE Move_Home_POI_54() [2, 2]
		MEETS {
			Visit_POI_54();
		}

		VALUE Move_Home_POI_53() [2, 4]
		MEETS {
			Visit_POI_53();
		}

		VALUE Move_Home_POI_64() [1, 1]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_Home_POI_52() [3, 5]
		MEETS {
			Visit_POI_52();
		}

		VALUE Move_Home_POI_63() [7, 11]
		MEETS {
			Visit_POI_63();
		}

		VALUE Move_Home_POI_51() [4, 6]
		MEETS {
			Visit_POI_51();
		}

		VALUE Move_Home_POI_62() [2, 4]
		MEETS {
			Visit_POI_62();
		}

		VALUE Move_Home_POI_50() [2, 4]
		MEETS {
			Visit_POI_50();
		}

		VALUE Move_Home_POI_61() [6, 10]
		MEETS {
			Visit_POI_61();
		}

		VALUE Move_Home_POI_60() [1, 1]
		MEETS {
			Visit_POI_60();
		}

		VALUE Visit_POI_49() [24, 36]
		MEETS {
			Move_POI_49_POI_48();
			Move_POI_49_POI_59();
			Move_POI_49_POI_47();
			Move_POI_49_POI_58();
			Move_POI_49_POI_46();
			Move_POI_49_POI_57();
			Move_POI_49_POI_45();
			Move_POI_49_POI_56();
			Move_POI_49_POI_55();
			Move_POI_49_POI_54();
			Move_POI_49_POI_53();
			Move_POI_49_POI_64();
			Move_POI_49_POI_52();
			Move_POI_49_POI_63();
			Move_POI_49_POI_51();
			Move_POI_49_POI_62();
			Move_POI_49_POI_50();
			Move_POI_49_POI_61();
			Move_POI_49_POI_60();
			Finish();
		}

		VALUE Move_POI_49_POI_48() [4, 6]
		MEETS {
			Visit_POI_48();
		}

		VALUE Move_POI_49_POI_59() [2, 2]
		MEETS {
			Visit_POI_59();
		}

		VALUE Move_POI_49_POI_47() [3, 5]
		MEETS {
			Visit_POI_47();
		}

		VALUE Move_POI_49_POI_58() [5, 7]
		MEETS {
			Visit_POI_58();
		}

		VALUE Move_POI_49_POI_46() [6, 10]
		MEETS {
			Visit_POI_46();
		}

		VALUE Move_POI_49_POI_57() [4, 6]
		MEETS {
			Visit_POI_57();
		}

		VALUE Move_POI_49_POI_45() [6, 10]
		MEETS {
			Visit_POI_45();
		}

		VALUE Move_POI_49_POI_56() [2, 4]
		MEETS {
			Visit_POI_56();
		}

		VALUE Move_POI_49_POI_55() [6, 10]
		MEETS {
			Visit_POI_55();
		}

		VALUE Move_POI_49_POI_54() [2, 4]
		MEETS {
			Visit_POI_54();
		}

		VALUE Move_POI_49_POI_53() [5, 7]
		MEETS {
			Visit_POI_53();
		}

		VALUE Move_POI_49_POI_64() [2, 2]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_POI_49_POI_52() [3, 5]
		MEETS {
			Visit_POI_52();
		}

		VALUE Move_POI_49_POI_63() [4, 6]
		MEETS {
			Visit_POI_63();
		}

		VALUE Move_POI_49_POI_51() [6, 10]
		MEETS {
			Visit_POI_51();
		}

		VALUE Move_POI_49_POI_62() [1, 1]
		MEETS {
			Visit_POI_62();
		}

		VALUE Move_POI_49_POI_50() [5, 7]
		MEETS {
			Visit_POI_50();
		}

		VALUE Move_POI_49_POI_61() [3, 5]
		MEETS {
			Visit_POI_61();
		}

		VALUE Move_POI_49_POI_60() [5, 7]
		MEETS {
			Visit_POI_60();
		}

		VALUE Visit_POI_48() [24, 36]
		MEETS {
			Move_POI_48_POI_49();
			Move_POI_48_POI_59();
			Move_POI_48_POI_47();
			Move_POI_48_POI_58();
			Move_POI_48_POI_46();
			Move_POI_48_POI_57();
			Move_POI_48_POI_45();
			Move_POI_48_POI_56();
			Move_POI_48_POI_55();
			Move_POI_48_POI_54();
			Move_POI_48_POI_53();
			Move_POI_48_POI_64();
			Move_POI_48_POI_52();
			Move_POI_48_POI_63();
			Move_POI_48_POI_51();
			Move_POI_48_POI_62();
			Move_POI_48_POI_50();
			Move_POI_48_POI_61();
			Move_POI_48_POI_60();
			Finish();
		}

		VALUE Move_POI_48_POI_49() [6, 10]
		MEETS {
			Visit_POI_49();
		}

		VALUE Move_POI_48_POI_59() [6, 10]
		MEETS {
			Visit_POI_59();
		}

		VALUE Move_POI_48_POI_47() [7, 11]
		MEETS {
			Visit_POI_47();
		}

		VALUE Move_POI_48_POI_58() [6, 8]
		MEETS {
			Visit_POI_58();
		}

		VALUE Move_POI_48_POI_46() [2, 4]
		MEETS {
			Visit_POI_46();
		}

		VALUE Move_POI_48_POI_57() [3, 5]
		MEETS {
			Visit_POI_57();
		}

		VALUE Move_POI_48_POI_45() [4, 6]
		MEETS {
			Visit_POI_45();
		}

		VALUE Move_POI_48_POI_56() [2, 4]
		MEETS {
			Visit_POI_56();
		}

		VALUE Move_POI_48_POI_55() [6, 10]
		MEETS {
			Visit_POI_55();
		}

		VALUE Move_POI_48_POI_54() [7, 11]
		MEETS {
			Visit_POI_54();
		}

		VALUE Move_POI_48_POI_53() [7, 11]
		MEETS {
			Visit_POI_53();
		}

		VALUE Move_POI_48_POI_64() [2, 4]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_POI_48_POI_52() [2, 4]
		MEETS {
			Visit_POI_52();
		}

		VALUE Move_POI_48_POI_63() [5, 7]
		MEETS {
			Visit_POI_63();
		}

		VALUE Move_POI_48_POI_51() [2, 2]
		MEETS {
			Visit_POI_51();
		}

		VALUE Move_POI_48_POI_62() [6, 8]
		MEETS {
			Visit_POI_62();
		}

		VALUE Move_POI_48_POI_50() [5, 7]
		MEETS {
			Visit_POI_50();
		}

		VALUE Move_POI_48_POI_61() [1, 1]
		MEETS {
			Visit_POI_61();
		}

		VALUE Move_POI_48_POI_60() [6, 8]
		MEETS {
			Visit_POI_60();
		}

		VALUE Visit_POI_59() [8, 12]
		MEETS {
			Move_POI_59_POI_49();
			Move_POI_59_POI_48();
			Move_POI_59_POI_47();
			Move_POI_59_POI_58();
			Move_POI_59_POI_46();
			Move_POI_59_POI_57();
			Move_POI_59_POI_45();
			Move_POI_59_POI_56();
			Move_POI_59_POI_55();
			Move_POI_59_POI_54();
			Move_POI_59_POI_53();
			Move_POI_59_POI_64();
			Move_POI_59_POI_52();
			Move_POI_59_POI_63();
			Move_POI_59_POI_51();
			Move_POI_59_POI_62();
			Move_POI_59_POI_50();
			Move_POI_59_POI_61();
			Move_POI_59_POI_60();
			Finish();
		}

		VALUE Move_POI_59_POI_49() [7, 11]
		MEETS {
			Visit_POI_49();
		}

		VALUE Move_POI_59_POI_48() [1, 1]
		MEETS {
			Visit_POI_48();
		}

		VALUE Move_POI_59_POI_47() [2, 2]
		MEETS {
			Visit_POI_47();
		}

		VALUE Move_POI_59_POI_58() [3, 5]
		MEETS {
			Visit_POI_58();
		}

		VALUE Move_POI_59_POI_46() [7, 11]
		MEETS {
			Visit_POI_46();
		}

		VALUE Move_POI_59_POI_57() [2, 2]
		MEETS {
			Visit_POI_57();
		}

		VALUE Move_POI_59_POI_45() [2, 4]
		MEETS {
			Visit_POI_45();
		}

		VALUE Move_POI_59_POI_56() [2, 4]
		MEETS {
			Visit_POI_56();
		}

		VALUE Move_POI_59_POI_55() [1, 1]
		MEETS {
			Visit_POI_55();
		}

		VALUE Move_POI_59_POI_54() [2, 4]
		MEETS {
			Visit_POI_54();
		}

		VALUE Move_POI_59_POI_53() [2, 4]
		MEETS {
			Visit_POI_53();
		}

		VALUE Move_POI_59_POI_64() [5, 7]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_POI_59_POI_52() [1, 1]
		MEETS {
			Visit_POI_52();
		}

		VALUE Move_POI_59_POI_63() [2, 4]
		MEETS {
			Visit_POI_63();
		}

		VALUE Move_POI_59_POI_51() [6, 10]
		MEETS {
			Visit_POI_51();
		}

		VALUE Move_POI_59_POI_62() [3, 5]
		MEETS {
			Visit_POI_62();
		}

		VALUE Move_POI_59_POI_50() [7, 11]
		MEETS {
			Visit_POI_50();
		}

		VALUE Move_POI_59_POI_61() [7, 11]
		MEETS {
			Visit_POI_61();
		}

		VALUE Move_POI_59_POI_60() [2, 2]
		MEETS {
			Visit_POI_60();
		}

		VALUE Visit_POI_47() [8, 12]
		MEETS {
			Move_POI_47_POI_49();
			Move_POI_47_POI_48();
			Move_POI_47_POI_59();
			Move_POI_47_POI_58();
			Move_POI_47_POI_46();
			Move_POI_47_POI_57();
			Move_POI_47_POI_45();
			Move_POI_47_POI_56();
			Move_POI_47_POI_55();
			Move_POI_47_POI_54();
			Move_POI_47_POI_53();
			Move_POI_47_POI_64();
			Move_POI_47_POI_52();
			Move_POI_47_POI_63();
			Move_POI_47_POI_51();
			Move_POI_47_POI_62();
			Move_POI_47_POI_50();
			Move_POI_47_POI_61();
			Move_POI_47_POI_60();
			Finish();
		}

		VALUE Move_POI_47_POI_49() [2, 2]
		MEETS {
			Visit_POI_49();
		}

		VALUE Move_POI_47_POI_48() [6, 8]
		MEETS {
			Visit_POI_48();
		}

		VALUE Move_POI_47_POI_59() [1, 1]
		MEETS {
			Visit_POI_59();
		}

		VALUE Move_POI_47_POI_58() [6, 10]
		MEETS {
			Visit_POI_58();
		}

		VALUE Move_POI_47_POI_46() [6, 8]
		MEETS {
			Visit_POI_46();
		}

		VALUE Move_POI_47_POI_57() [6, 8]
		MEETS {
			Visit_POI_57();
		}

		VALUE Move_POI_47_POI_45() [2, 2]
		MEETS {
			Visit_POI_45();
		}

		VALUE Move_POI_47_POI_56() [4, 6]
		MEETS {
			Visit_POI_56();
		}

		VALUE Move_POI_47_POI_55() [7, 11]
		MEETS {
			Visit_POI_55();
		}

		VALUE Move_POI_47_POI_54() [6, 8]
		MEETS {
			Visit_POI_54();
		}

		VALUE Move_POI_47_POI_53() [7, 11]
		MEETS {
			Visit_POI_53();
		}

		VALUE Move_POI_47_POI_64() [1, 1]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_POI_47_POI_52() [7, 11]
		MEETS {
			Visit_POI_52();
		}

		VALUE Move_POI_47_POI_63() [2, 2]
		MEETS {
			Visit_POI_63();
		}

		VALUE Move_POI_47_POI_51() [5, 7]
		MEETS {
			Visit_POI_51();
		}

		VALUE Move_POI_47_POI_62() [5, 7]
		MEETS {
			Visit_POI_62();
		}

		VALUE Move_POI_47_POI_50() [5, 7]
		MEETS {
			Visit_POI_50();
		}

		VALUE Move_POI_47_POI_61() [6, 10]
		MEETS {
			Visit_POI_61();
		}

		VALUE Move_POI_47_POI_60() [4, 6]
		MEETS {
			Visit_POI_60();
		}

		VALUE Visit_POI_58() [24, 36]
		MEETS {
			Move_POI_58_POI_49();
			Move_POI_58_POI_48();
			Move_POI_58_POI_59();
			Move_POI_58_POI_47();
			Move_POI_58_POI_46();
			Move_POI_58_POI_57();
			Move_POI_58_POI_45();
			Move_POI_58_POI_56();
			Move_POI_58_POI_55();
			Move_POI_58_POI_54();
			Move_POI_58_POI_53();
			Move_POI_58_POI_64();
			Move_POI_58_POI_52();
			Move_POI_58_POI_63();
			Move_POI_58_POI_51();
			Move_POI_58_POI_62();
			Move_POI_58_POI_50();
			Move_POI_58_POI_61();
			Move_POI_58_POI_60();
			Finish();
		}

		VALUE Move_POI_58_POI_49() [1, 1]
		MEETS {
			Visit_POI_49();
		}

		VALUE Move_POI_58_POI_48() [6, 8]
		MEETS {
			Visit_POI_48();
		}

		VALUE Move_POI_58_POI_59() [6, 10]
		MEETS {
			Visit_POI_59();
		}

		VALUE Move_POI_58_POI_47() [2, 4]
		MEETS {
			Visit_POI_47();
		}

		VALUE Move_POI_58_POI_46() [4, 6]
		MEETS {
			Visit_POI_46();
		}

		VALUE Move_POI_58_POI_57() [1, 1]
		MEETS {
			Visit_POI_57();
		}

		VALUE Move_POI_58_POI_45() [5, 7]
		MEETS {
			Visit_POI_45();
		}

		VALUE Move_POI_58_POI_56() [6, 8]
		MEETS {
			Visit_POI_56();
		}

		VALUE Move_POI_58_POI_55() [5, 7]
		MEETS {
			Visit_POI_55();
		}

		VALUE Move_POI_58_POI_54() [5, 7]
		MEETS {
			Visit_POI_54();
		}

		VALUE Move_POI_58_POI_53() [1, 1]
		MEETS {
			Visit_POI_53();
		}

		VALUE Move_POI_58_POI_64() [6, 10]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_POI_58_POI_52() [6, 10]
		MEETS {
			Visit_POI_52();
		}

		VALUE Move_POI_58_POI_63() [2, 2]
		MEETS {
			Visit_POI_63();
		}

		VALUE Move_POI_58_POI_51() [5, 7]
		MEETS {
			Visit_POI_51();
		}

		VALUE Move_POI_58_POI_62() [2, 4]
		MEETS {
			Visit_POI_62();
		}

		VALUE Move_POI_58_POI_50() [2, 4]
		MEETS {
			Visit_POI_50();
		}

		VALUE Move_POI_58_POI_61() [7, 11]
		MEETS {
			Visit_POI_61();
		}

		VALUE Move_POI_58_POI_60() [3, 5]
		MEETS {
			Visit_POI_60();
		}

		VALUE Visit_POI_46() [72, 108]
		MEETS {
			Move_POI_46_POI_49();
			Move_POI_46_POI_48();
			Move_POI_46_POI_59();
			Move_POI_46_POI_47();
			Move_POI_46_POI_58();
			Move_POI_46_POI_57();
			Move_POI_46_POI_45();
			Move_POI_46_POI_56();
			Move_POI_46_POI_55();
			Move_POI_46_POI_54();
			Move_POI_46_POI_53();
			Move_POI_46_POI_64();
			Move_POI_46_POI_52();
			Move_POI_46_POI_63();
			Move_POI_46_POI_51();
			Move_POI_46_POI_62();
			Move_POI_46_POI_50();
			Move_POI_46_POI_61();
			Move_POI_46_POI_60();
			Finish();
		}

		VALUE Move_POI_46_POI_49() [5, 7]
		MEETS {
			Visit_POI_49();
		}

		VALUE Move_POI_46_POI_48() [2, 2]
		MEETS {
			Visit_POI_48();
		}

		VALUE Move_POI_46_POI_59() [2, 2]
		MEETS {
			Visit_POI_59();
		}

		VALUE Move_POI_46_POI_47() [4, 6]
		MEETS {
			Visit_POI_47();
		}

		VALUE Move_POI_46_POI_58() [3, 5]
		MEETS {
			Visit_POI_58();
		}

		VALUE Move_POI_46_POI_57() [3, 5]
		MEETS {
			Visit_POI_57();
		}

		VALUE Move_POI_46_POI_45() [1, 1]
		MEETS {
			Visit_POI_45();
		}

		VALUE Move_POI_46_POI_56() [2, 2]
		MEETS {
			Visit_POI_56();
		}

		VALUE Move_POI_46_POI_55() [2, 4]
		MEETS {
			Visit_POI_55();
		}

		VALUE Move_POI_46_POI_54() [4, 6]
		MEETS {
			Visit_POI_54();
		}

		VALUE Move_POI_46_POI_53() [4, 6]
		MEETS {
			Visit_POI_53();
		}

		VALUE Move_POI_46_POI_64() [7, 11]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_POI_46_POI_52() [7, 11]
		MEETS {
			Visit_POI_52();
		}

		VALUE Move_POI_46_POI_63() [2, 4]
		MEETS {
			Visit_POI_63();
		}

		VALUE Move_POI_46_POI_51() [5, 7]
		MEETS {
			Visit_POI_51();
		}

		VALUE Move_POI_46_POI_62() [7, 11]
		MEETS {
			Visit_POI_62();
		}

		VALUE Move_POI_46_POI_50() [4, 6]
		MEETS {
			Visit_POI_50();
		}

		VALUE Move_POI_46_POI_61() [5, 7]
		MEETS {
			Visit_POI_61();
		}

		VALUE Move_POI_46_POI_60() [5, 7]
		MEETS {
			Visit_POI_60();
		}

		VALUE Visit_POI_57() [24, 36]
		MEETS {
			Move_POI_57_POI_49();
			Move_POI_57_POI_48();
			Move_POI_57_POI_59();
			Move_POI_57_POI_47();
			Move_POI_57_POI_58();
			Move_POI_57_POI_46();
			Move_POI_57_POI_45();
			Move_POI_57_POI_56();
			Move_POI_57_POI_55();
			Move_POI_57_POI_54();
			Move_POI_57_POI_53();
			Move_POI_57_POI_64();
			Move_POI_57_POI_52();
			Move_POI_57_POI_63();
			Move_POI_57_POI_51();
			Move_POI_57_POI_62();
			Move_POI_57_POI_50();
			Move_POI_57_POI_61();
			Move_POI_57_POI_60();
			Finish();
		}

		VALUE Move_POI_57_POI_49() [1, 1]
		MEETS {
			Visit_POI_49();
		}

		VALUE Move_POI_57_POI_48() [5, 7]
		MEETS {
			Visit_POI_48();
		}

		VALUE Move_POI_57_POI_59() [3, 5]
		MEETS {
			Visit_POI_59();
		}

		VALUE Move_POI_57_POI_47() [4, 6]
		MEETS {
			Visit_POI_47();
		}

		VALUE Move_POI_57_POI_58() [4, 6]
		MEETS {
			Visit_POI_58();
		}

		VALUE Move_POI_57_POI_46() [7, 11]
		MEETS {
			Visit_POI_46();
		}

		VALUE Move_POI_57_POI_45() [1, 1]
		MEETS {
			Visit_POI_45();
		}

		VALUE Move_POI_57_POI_56() [4, 6]
		MEETS {
			Visit_POI_56();
		}

		VALUE Move_POI_57_POI_55() [3, 5]
		MEETS {
			Visit_POI_55();
		}

		VALUE Move_POI_57_POI_54() [3, 5]
		MEETS {
			Visit_POI_54();
		}

		VALUE Move_POI_57_POI_53() [6, 8]
		MEETS {
			Visit_POI_53();
		}

		VALUE Move_POI_57_POI_64() [2, 2]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_POI_57_POI_52() [4, 6]
		MEETS {
			Visit_POI_52();
		}

		VALUE Move_POI_57_POI_63() [3, 5]
		MEETS {
			Visit_POI_63();
		}

		VALUE Move_POI_57_POI_51() [2, 4]
		MEETS {
			Visit_POI_51();
		}

		VALUE Move_POI_57_POI_62() [6, 10]
		MEETS {
			Visit_POI_62();
		}

		VALUE Move_POI_57_POI_50() [4, 6]
		MEETS {
			Visit_POI_50();
		}

		VALUE Move_POI_57_POI_61() [7, 11]
		MEETS {
			Visit_POI_61();
		}

		VALUE Move_POI_57_POI_60() [5, 7]
		MEETS {
			Visit_POI_60();
		}

		VALUE Visit_POI_45() [24, 36]
		MEETS {
			Move_POI_45_POI_49();
			Move_POI_45_POI_48();
			Move_POI_45_POI_59();
			Move_POI_45_POI_47();
			Move_POI_45_POI_58();
			Move_POI_45_POI_46();
			Move_POI_45_POI_57();
			Move_POI_45_POI_56();
			Move_POI_45_POI_55();
			Move_POI_45_POI_54();
			Move_POI_45_POI_53();
			Move_POI_45_POI_64();
			Move_POI_45_POI_52();
			Move_POI_45_POI_63();
			Move_POI_45_POI_51();
			Move_POI_45_POI_62();
			Move_POI_45_POI_50();
			Move_POI_45_POI_61();
			Move_POI_45_POI_60();
			Finish();
		}

		VALUE Move_POI_45_POI_49() [7, 11]
		MEETS {
			Visit_POI_49();
		}

		VALUE Move_POI_45_POI_48() [4, 6]
		MEETS {
			Visit_POI_48();
		}

		VALUE Move_POI_45_POI_59() [4, 6]
		MEETS {
			Visit_POI_59();
		}

		VALUE Move_POI_45_POI_47() [1, 1]
		MEETS {
			Visit_POI_47();
		}

		VALUE Move_POI_45_POI_58() [2, 2]
		MEETS {
			Visit_POI_58();
		}

		VALUE Move_POI_45_POI_46() [2, 2]
		MEETS {
			Visit_POI_46();
		}

		VALUE Move_POI_45_POI_57() [1, 1]
		MEETS {
			Visit_POI_57();
		}

		VALUE Move_POI_45_POI_56() [6, 8]
		MEETS {
			Visit_POI_56();
		}

		VALUE Move_POI_45_POI_55() [1, 1]
		MEETS {
			Visit_POI_55();
		}

		VALUE Move_POI_45_POI_54() [7, 11]
		MEETS {
			Visit_POI_54();
		}

		VALUE Move_POI_45_POI_53() [7, 11]
		MEETS {
			Visit_POI_53();
		}

		VALUE Move_POI_45_POI_64() [3, 5]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_POI_45_POI_52() [1, 1]
		MEETS {
			Visit_POI_52();
		}

		VALUE Move_POI_45_POI_63() [4, 6]
		MEETS {
			Visit_POI_63();
		}

		VALUE Move_POI_45_POI_51() [7, 11]
		MEETS {
			Visit_POI_51();
		}

		VALUE Move_POI_45_POI_62() [4, 6]
		MEETS {
			Visit_POI_62();
		}

		VALUE Move_POI_45_POI_50() [7, 11]
		MEETS {
			Visit_POI_50();
		}

		VALUE Move_POI_45_POI_61() [4, 6]
		MEETS {
			Visit_POI_61();
		}

		VALUE Move_POI_45_POI_60() [6, 8]
		MEETS {
			Visit_POI_60();
		}

		VALUE Visit_POI_56() [8, 12]
		MEETS {
			Move_POI_56_POI_49();
			Move_POI_56_POI_48();
			Move_POI_56_POI_59();
			Move_POI_56_POI_47();
			Move_POI_56_POI_58();
			Move_POI_56_POI_46();
			Move_POI_56_POI_57();
			Move_POI_56_POI_45();
			Move_POI_56_POI_55();
			Move_POI_56_POI_54();
			Move_POI_56_POI_53();
			Move_POI_56_POI_64();
			Move_POI_56_POI_52();
			Move_POI_56_POI_63();
			Move_POI_56_POI_51();
			Move_POI_56_POI_62();
			Move_POI_56_POI_50();
			Move_POI_56_POI_61();
			Move_POI_56_POI_60();
			Finish();
		}

		VALUE Move_POI_56_POI_49() [2, 4]
		MEETS {
			Visit_POI_49();
		}

		VALUE Move_POI_56_POI_48() [7, 11]
		MEETS {
			Visit_POI_48();
		}

		VALUE Move_POI_56_POI_59() [2, 4]
		MEETS {
			Visit_POI_59();
		}

		VALUE Move_POI_56_POI_47() [4, 6]
		MEETS {
			Visit_POI_47();
		}

		VALUE Move_POI_56_POI_58() [1, 1]
		MEETS {
			Visit_POI_58();
		}

		VALUE Move_POI_56_POI_46() [2, 2]
		MEETS {
			Visit_POI_46();
		}

		VALUE Move_POI_56_POI_57() [6, 10]
		MEETS {
			Visit_POI_57();
		}

		VALUE Move_POI_56_POI_45() [4, 6]
		MEETS {
			Visit_POI_45();
		}

		VALUE Move_POI_56_POI_55() [6, 8]
		MEETS {
			Visit_POI_55();
		}

		VALUE Move_POI_56_POI_54() [1, 1]
		MEETS {
			Visit_POI_54();
		}

		VALUE Move_POI_56_POI_53() [2, 4]
		MEETS {
			Visit_POI_53();
		}

		VALUE Move_POI_56_POI_64() [5, 7]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_POI_56_POI_52() [1, 1]
		MEETS {
			Visit_POI_52();
		}

		VALUE Move_POI_56_POI_63() [5, 7]
		MEETS {
			Visit_POI_63();
		}

		VALUE Move_POI_56_POI_51() [5, 7]
		MEETS {
			Visit_POI_51();
		}

		VALUE Move_POI_56_POI_62() [3, 5]
		MEETS {
			Visit_POI_62();
		}

		VALUE Move_POI_56_POI_50() [3, 5]
		MEETS {
			Visit_POI_50();
		}

		VALUE Move_POI_56_POI_61() [6, 8]
		MEETS {
			Visit_POI_61();
		}

		VALUE Move_POI_56_POI_60() [7, 11]
		MEETS {
			Visit_POI_60();
		}

		VALUE Visit_POI_55() [24, 36]
		MEETS {
			Move_POI_55_POI_49();
			Move_POI_55_POI_48();
			Move_POI_55_POI_59();
			Move_POI_55_POI_47();
			Move_POI_55_POI_58();
			Move_POI_55_POI_46();
			Move_POI_55_POI_57();
			Move_POI_55_POI_45();
			Move_POI_55_POI_56();
			Move_POI_55_POI_54();
			Move_POI_55_POI_53();
			Move_POI_55_POI_64();
			Move_POI_55_POI_52();
			Move_POI_55_POI_63();
			Move_POI_55_POI_51();
			Move_POI_55_POI_62();
			Move_POI_55_POI_50();
			Move_POI_55_POI_61();
			Move_POI_55_POI_60();
			Finish();
		}

		VALUE Move_POI_55_POI_49() [2, 2]
		MEETS {
			Visit_POI_49();
		}

		VALUE Move_POI_55_POI_48() [2, 4]
		MEETS {
			Visit_POI_48();
		}

		VALUE Move_POI_55_POI_59() [7, 11]
		MEETS {
			Visit_POI_59();
		}

		VALUE Move_POI_55_POI_47() [2, 2]
		MEETS {
			Visit_POI_47();
		}

		VALUE Move_POI_55_POI_58() [4, 6]
		MEETS {
			Visit_POI_58();
		}

		VALUE Move_POI_55_POI_46() [4, 6]
		MEETS {
			Visit_POI_46();
		}

		VALUE Move_POI_55_POI_57() [2, 2]
		MEETS {
			Visit_POI_57();
		}

		VALUE Move_POI_55_POI_45() [4, 6]
		MEETS {
			Visit_POI_45();
		}

		VALUE Move_POI_55_POI_56() [2, 4]
		MEETS {
			Visit_POI_56();
		}

		VALUE Move_POI_55_POI_54() [6, 10]
		MEETS {
			Visit_POI_54();
		}

		VALUE Move_POI_55_POI_53() [7, 11]
		MEETS {
			Visit_POI_53();
		}

		VALUE Move_POI_55_POI_64() [6, 10]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_POI_55_POI_52() [4, 6]
		MEETS {
			Visit_POI_52();
		}

		VALUE Move_POI_55_POI_63() [6, 8]
		MEETS {
			Visit_POI_63();
		}

		VALUE Move_POI_55_POI_51() [6, 10]
		MEETS {
			Visit_POI_51();
		}

		VALUE Move_POI_55_POI_62() [2, 2]
		MEETS {
			Visit_POI_62();
		}

		VALUE Move_POI_55_POI_50() [3, 5]
		MEETS {
			Visit_POI_50();
		}

		VALUE Move_POI_55_POI_61() [5, 7]
		MEETS {
			Visit_POI_61();
		}

		VALUE Move_POI_55_POI_60() [1, 1]
		MEETS {
			Visit_POI_60();
		}

		VALUE Visit_POI_54() [8, 12]
		MEETS {
			Move_POI_54_POI_49();
			Move_POI_54_POI_48();
			Move_POI_54_POI_59();
			Move_POI_54_POI_47();
			Move_POI_54_POI_58();
			Move_POI_54_POI_46();
			Move_POI_54_POI_57();
			Move_POI_54_POI_45();
			Move_POI_54_POI_56();
			Move_POI_54_POI_55();
			Move_POI_54_POI_53();
			Move_POI_54_POI_64();
			Move_POI_54_POI_52();
			Move_POI_54_POI_63();
			Move_POI_54_POI_51();
			Move_POI_54_POI_62();
			Move_POI_54_POI_50();
			Move_POI_54_POI_61();
			Move_POI_54_POI_60();
			Finish();
		}

		VALUE Move_POI_54_POI_49() [5, 7]
		MEETS {
			Visit_POI_49();
		}

		VALUE Move_POI_54_POI_48() [1, 1]
		MEETS {
			Visit_POI_48();
		}

		VALUE Move_POI_54_POI_59() [6, 10]
		MEETS {
			Visit_POI_59();
		}

		VALUE Move_POI_54_POI_47() [5, 7]
		MEETS {
			Visit_POI_47();
		}

		VALUE Move_POI_54_POI_58() [5, 7]
		MEETS {
			Visit_POI_58();
		}

		VALUE Move_POI_54_POI_46() [7, 11]
		MEETS {
			Visit_POI_46();
		}

		VALUE Move_POI_54_POI_57() [2, 2]
		MEETS {
			Visit_POI_57();
		}

		VALUE Move_POI_54_POI_45() [6, 10]
		MEETS {
			Visit_POI_45();
		}

		VALUE Move_POI_54_POI_56() [5, 7]
		MEETS {
			Visit_POI_56();
		}

		VALUE Move_POI_54_POI_55() [5, 7]
		MEETS {
			Visit_POI_55();
		}

		VALUE Move_POI_54_POI_53() [7, 11]
		MEETS {
			Visit_POI_53();
		}

		VALUE Move_POI_54_POI_64() [6, 8]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_POI_54_POI_52() [6, 8]
		MEETS {
			Visit_POI_52();
		}

		VALUE Move_POI_54_POI_63() [3, 5]
		MEETS {
			Visit_POI_63();
		}

		VALUE Move_POI_54_POI_51() [7, 11]
		MEETS {
			Visit_POI_51();
		}

		VALUE Move_POI_54_POI_62() [6, 8]
		MEETS {
			Visit_POI_62();
		}

		VALUE Move_POI_54_POI_50() [5, 7]
		MEETS {
			Visit_POI_50();
		}

		VALUE Move_POI_54_POI_61() [5, 7]
		MEETS {
			Visit_POI_61();
		}

		VALUE Move_POI_54_POI_60() [7, 11]
		MEETS {
			Visit_POI_60();
		}

		VALUE Visit_POI_53() [16, 24]
		MEETS {
			Move_POI_53_POI_49();
			Move_POI_53_POI_48();
			Move_POI_53_POI_59();
			Move_POI_53_POI_47();
			Move_POI_53_POI_58();
			Move_POI_53_POI_46();
			Move_POI_53_POI_57();
			Move_POI_53_POI_45();
			Move_POI_53_POI_56();
			Move_POI_53_POI_55();
			Move_POI_53_POI_54();
			Move_POI_53_POI_64();
			Move_POI_53_POI_52();
			Move_POI_53_POI_63();
			Move_POI_53_POI_51();
			Move_POI_53_POI_62();
			Move_POI_53_POI_50();
			Move_POI_53_POI_61();
			Move_POI_53_POI_60();
			Finish();
		}

		VALUE Move_POI_53_POI_49() [2, 2]
		MEETS {
			Visit_POI_49();
		}

		VALUE Move_POI_53_POI_48() [4, 6]
		MEETS {
			Visit_POI_48();
		}

		VALUE Move_POI_53_POI_59() [3, 5]
		MEETS {
			Visit_POI_59();
		}

		VALUE Move_POI_53_POI_47() [6, 10]
		MEETS {
			Visit_POI_47();
		}

		VALUE Move_POI_53_POI_58() [5, 7]
		MEETS {
			Visit_POI_58();
		}

		VALUE Move_POI_53_POI_46() [6, 10]
		MEETS {
			Visit_POI_46();
		}

		VALUE Move_POI_53_POI_57() [4, 6]
		MEETS {
			Visit_POI_57();
		}

		VALUE Move_POI_53_POI_45() [2, 4]
		MEETS {
			Visit_POI_45();
		}

		VALUE Move_POI_53_POI_56() [5, 7]
		MEETS {
			Visit_POI_56();
		}

		VALUE Move_POI_53_POI_55() [4, 6]
		MEETS {
			Visit_POI_55();
		}

		VALUE Move_POI_53_POI_54() [7, 11]
		MEETS {
			Visit_POI_54();
		}

		VALUE Move_POI_53_POI_64() [6, 8]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_POI_53_POI_52() [2, 2]
		MEETS {
			Visit_POI_52();
		}

		VALUE Move_POI_53_POI_63() [6, 8]
		MEETS {
			Visit_POI_63();
		}

		VALUE Move_POI_53_POI_51() [1, 1]
		MEETS {
			Visit_POI_51();
		}

		VALUE Move_POI_53_POI_62() [7, 11]
		MEETS {
			Visit_POI_62();
		}

		VALUE Move_POI_53_POI_50() [7, 11]
		MEETS {
			Visit_POI_50();
		}

		VALUE Move_POI_53_POI_61() [3, 5]
		MEETS {
			Visit_POI_61();
		}

		VALUE Move_POI_53_POI_60() [1, 1]
		MEETS {
			Visit_POI_60();
		}

		VALUE Visit_POI_64() [8, 12]
		MEETS {
			Move_POI_64_POI_49();
			Move_POI_64_POI_48();
			Move_POI_64_POI_59();
			Move_POI_64_POI_47();
			Move_POI_64_POI_58();
			Move_POI_64_POI_46();
			Move_POI_64_POI_57();
			Move_POI_64_POI_45();
			Move_POI_64_POI_56();
			Move_POI_64_POI_55();
			Move_POI_64_POI_54();
			Move_POI_64_POI_53();
			Move_POI_64_POI_52();
			Move_POI_64_POI_63();
			Move_POI_64_POI_51();
			Move_POI_64_POI_62();
			Move_POI_64_POI_50();
			Move_POI_64_POI_61();
			Move_POI_64_POI_60();
			Finish();
		}

		VALUE Move_POI_64_POI_49() [3, 5]
		MEETS {
			Visit_POI_49();
		}

		VALUE Move_POI_64_POI_48() [5, 7]
		MEETS {
			Visit_POI_48();
		}

		VALUE Move_POI_64_POI_59() [3, 5]
		MEETS {
			Visit_POI_59();
		}

		VALUE Move_POI_64_POI_47() [4, 6]
		MEETS {
			Visit_POI_47();
		}

		VALUE Move_POI_64_POI_58() [7, 11]
		MEETS {
			Visit_POI_58();
		}

		VALUE Move_POI_64_POI_46() [1, 1]
		MEETS {
			Visit_POI_46();
		}

		VALUE Move_POI_64_POI_57() [6, 10]
		MEETS {
			Visit_POI_57();
		}

		VALUE Move_POI_64_POI_45() [2, 2]
		MEETS {
			Visit_POI_45();
		}

		VALUE Move_POI_64_POI_56() [2, 2]
		MEETS {
			Visit_POI_56();
		}

		VALUE Move_POI_64_POI_55() [6, 10]
		MEETS {
			Visit_POI_55();
		}

		VALUE Move_POI_64_POI_54() [7, 11]
		MEETS {
			Visit_POI_54();
		}

		VALUE Move_POI_64_POI_53() [4, 6]
		MEETS {
			Visit_POI_53();
		}

		VALUE Move_POI_64_POI_52() [7, 11]
		MEETS {
			Visit_POI_52();
		}

		VALUE Move_POI_64_POI_63() [4, 6]
		MEETS {
			Visit_POI_63();
		}

		VALUE Move_POI_64_POI_51() [7, 11]
		MEETS {
			Visit_POI_51();
		}

		VALUE Move_POI_64_POI_62() [1, 1]
		MEETS {
			Visit_POI_62();
		}

		VALUE Move_POI_64_POI_50() [6, 10]
		MEETS {
			Visit_POI_50();
		}

		VALUE Move_POI_64_POI_61() [6, 8]
		MEETS {
			Visit_POI_61();
		}

		VALUE Move_POI_64_POI_60() [3, 5]
		MEETS {
			Visit_POI_60();
		}

		VALUE Visit_POI_52() [24, 36]
		MEETS {
			Move_POI_52_POI_49();
			Move_POI_52_POI_48();
			Move_POI_52_POI_59();
			Move_POI_52_POI_47();
			Move_POI_52_POI_58();
			Move_POI_52_POI_46();
			Move_POI_52_POI_57();
			Move_POI_52_POI_45();
			Move_POI_52_POI_56();
			Move_POI_52_POI_55();
			Move_POI_52_POI_54();
			Move_POI_52_POI_53();
			Move_POI_52_POI_64();
			Move_POI_52_POI_63();
			Move_POI_52_POI_51();
			Move_POI_52_POI_62();
			Move_POI_52_POI_50();
			Move_POI_52_POI_61();
			Move_POI_52_POI_60();
			Finish();
		}

		VALUE Move_POI_52_POI_49() [1, 1]
		MEETS {
			Visit_POI_49();
		}

		VALUE Move_POI_52_POI_48() [7, 11]
		MEETS {
			Visit_POI_48();
		}

		VALUE Move_POI_52_POI_59() [7, 11]
		MEETS {
			Visit_POI_59();
		}

		VALUE Move_POI_52_POI_47() [3, 5]
		MEETS {
			Visit_POI_47();
		}

		VALUE Move_POI_52_POI_58() [6, 10]
		MEETS {
			Visit_POI_58();
		}

		VALUE Move_POI_52_POI_46() [7, 11]
		MEETS {
			Visit_POI_46();
		}

		VALUE Move_POI_52_POI_57() [6, 10]
		MEETS {
			Visit_POI_57();
		}

		VALUE Move_POI_52_POI_45() [1, 1]
		MEETS {
			Visit_POI_45();
		}

		VALUE Move_POI_52_POI_56() [6, 10]
		MEETS {
			Visit_POI_56();
		}

		VALUE Move_POI_52_POI_55() [7, 11]
		MEETS {
			Visit_POI_55();
		}

		VALUE Move_POI_52_POI_54() [2, 2]
		MEETS {
			Visit_POI_54();
		}

		VALUE Move_POI_52_POI_53() [1, 1]
		MEETS {
			Visit_POI_53();
		}

		VALUE Move_POI_52_POI_64() [5, 7]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_POI_52_POI_63() [5, 7]
		MEETS {
			Visit_POI_63();
		}

		VALUE Move_POI_52_POI_51() [6, 10]
		MEETS {
			Visit_POI_51();
		}

		VALUE Move_POI_52_POI_62() [2, 2]
		MEETS {
			Visit_POI_62();
		}

		VALUE Move_POI_52_POI_50() [6, 10]
		MEETS {
			Visit_POI_50();
		}

		VALUE Move_POI_52_POI_61() [6, 8]
		MEETS {
			Visit_POI_61();
		}

		VALUE Move_POI_52_POI_60() [1, 1]
		MEETS {
			Visit_POI_60();
		}

		VALUE Visit_POI_63() [24, 36]
		MEETS {
			Move_POI_63_POI_49();
			Move_POI_63_POI_48();
			Move_POI_63_POI_59();
			Move_POI_63_POI_47();
			Move_POI_63_POI_58();
			Move_POI_63_POI_46();
			Move_POI_63_POI_57();
			Move_POI_63_POI_45();
			Move_POI_63_POI_56();
			Move_POI_63_POI_55();
			Move_POI_63_POI_54();
			Move_POI_63_POI_53();
			Move_POI_63_POI_64();
			Move_POI_63_POI_52();
			Move_POI_63_POI_51();
			Move_POI_63_POI_62();
			Move_POI_63_POI_50();
			Move_POI_63_POI_61();
			Move_POI_63_POI_60();
			Finish();
		}

		VALUE Move_POI_63_POI_49() [2, 4]
		MEETS {
			Visit_POI_49();
		}

		VALUE Move_POI_63_POI_48() [6, 8]
		MEETS {
			Visit_POI_48();
		}

		VALUE Move_POI_63_POI_59() [4, 6]
		MEETS {
			Visit_POI_59();
		}

		VALUE Move_POI_63_POI_47() [6, 8]
		MEETS {
			Visit_POI_47();
		}

		VALUE Move_POI_63_POI_58() [3, 5]
		MEETS {
			Visit_POI_58();
		}

		VALUE Move_POI_63_POI_46() [6, 10]
		MEETS {
			Visit_POI_46();
		}

		VALUE Move_POI_63_POI_57() [6, 8]
		MEETS {
			Visit_POI_57();
		}

		VALUE Move_POI_63_POI_45() [2, 2]
		MEETS {
			Visit_POI_45();
		}

		VALUE Move_POI_63_POI_56() [4, 6]
		MEETS {
			Visit_POI_56();
		}

		VALUE Move_POI_63_POI_55() [7, 11]
		MEETS {
			Visit_POI_55();
		}

		VALUE Move_POI_63_POI_54() [3, 5]
		MEETS {
			Visit_POI_54();
		}

		VALUE Move_POI_63_POI_53() [7, 11]
		MEETS {
			Visit_POI_53();
		}

		VALUE Move_POI_63_POI_64() [5, 7]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_POI_63_POI_52() [2, 4]
		MEETS {
			Visit_POI_52();
		}

		VALUE Move_POI_63_POI_51() [2, 2]
		MEETS {
			Visit_POI_51();
		}

		VALUE Move_POI_63_POI_62() [5, 7]
		MEETS {
			Visit_POI_62();
		}

		VALUE Move_POI_63_POI_50() [5, 7]
		MEETS {
			Visit_POI_50();
		}

		VALUE Move_POI_63_POI_61() [6, 8]
		MEETS {
			Visit_POI_61();
		}

		VALUE Move_POI_63_POI_60() [6, 8]
		MEETS {
			Visit_POI_60();
		}

		VALUE Visit_POI_51() [8, 12]
		MEETS {
			Move_POI_51_POI_49();
			Move_POI_51_POI_48();
			Move_POI_51_POI_59();
			Move_POI_51_POI_47();
			Move_POI_51_POI_58();
			Move_POI_51_POI_46();
			Move_POI_51_POI_57();
			Move_POI_51_POI_45();
			Move_POI_51_POI_56();
			Move_POI_51_POI_55();
			Move_POI_51_POI_54();
			Move_POI_51_POI_53();
			Move_POI_51_POI_64();
			Move_POI_51_POI_52();
			Move_POI_51_POI_63();
			Move_POI_51_POI_62();
			Move_POI_51_POI_50();
			Move_POI_51_POI_61();
			Move_POI_51_POI_60();
			Finish();
		}

		VALUE Move_POI_51_POI_49() [2, 4]
		MEETS {
			Visit_POI_49();
		}

		VALUE Move_POI_51_POI_48() [6, 8]
		MEETS {
			Visit_POI_48();
		}

		VALUE Move_POI_51_POI_59() [7, 11]
		MEETS {
			Visit_POI_59();
		}

		VALUE Move_POI_51_POI_47() [6, 8]
		MEETS {
			Visit_POI_47();
		}

		VALUE Move_POI_51_POI_58() [7, 11]
		MEETS {
			Visit_POI_58();
		}

		VALUE Move_POI_51_POI_46() [3, 5]
		MEETS {
			Visit_POI_46();
		}

		VALUE Move_POI_51_POI_57() [6, 8]
		MEETS {
			Visit_POI_57();
		}

		VALUE Move_POI_51_POI_45() [7, 11]
		MEETS {
			Visit_POI_45();
		}

		VALUE Move_POI_51_POI_56() [2, 2]
		MEETS {
			Visit_POI_56();
		}

		VALUE Move_POI_51_POI_55() [3, 5]
		MEETS {
			Visit_POI_55();
		}

		VALUE Move_POI_51_POI_54() [7, 11]
		MEETS {
			Visit_POI_54();
		}

		VALUE Move_POI_51_POI_53() [1, 1]
		MEETS {
			Visit_POI_53();
		}

		VALUE Move_POI_51_POI_64() [4, 6]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_POI_51_POI_52() [3, 5]
		MEETS {
			Visit_POI_52();
		}

		VALUE Move_POI_51_POI_63() [4, 6]
		MEETS {
			Visit_POI_63();
		}

		VALUE Move_POI_51_POI_62() [6, 8]
		MEETS {
			Visit_POI_62();
		}

		VALUE Move_POI_51_POI_50() [2, 2]
		MEETS {
			Visit_POI_50();
		}

		VALUE Move_POI_51_POI_61() [5, 7]
		MEETS {
			Visit_POI_61();
		}

		VALUE Move_POI_51_POI_60() [6, 8]
		MEETS {
			Visit_POI_60();
		}

		VALUE Visit_POI_62() [24, 36]
		MEETS {
			Move_POI_62_POI_49();
			Move_POI_62_POI_48();
			Move_POI_62_POI_59();
			Move_POI_62_POI_47();
			Move_POI_62_POI_58();
			Move_POI_62_POI_46();
			Move_POI_62_POI_57();
			Move_POI_62_POI_45();
			Move_POI_62_POI_56();
			Move_POI_62_POI_55();
			Move_POI_62_POI_54();
			Move_POI_62_POI_53();
			Move_POI_62_POI_64();
			Move_POI_62_POI_52();
			Move_POI_62_POI_63();
			Move_POI_62_POI_51();
			Move_POI_62_POI_50();
			Move_POI_62_POI_61();
			Move_POI_62_POI_60();
			Finish();
		}

		VALUE Move_POI_62_POI_49() [2, 4]
		MEETS {
			Visit_POI_49();
		}

		VALUE Move_POI_62_POI_48() [2, 2]
		MEETS {
			Visit_POI_48();
		}

		VALUE Move_POI_62_POI_59() [7, 11]
		MEETS {
			Visit_POI_59();
		}

		VALUE Move_POI_62_POI_47() [1, 1]
		MEETS {
			Visit_POI_47();
		}

		VALUE Move_POI_62_POI_58() [7, 11]
		MEETS {
			Visit_POI_58();
		}

		VALUE Move_POI_62_POI_46() [7, 11]
		MEETS {
			Visit_POI_46();
		}

		VALUE Move_POI_62_POI_57() [3, 5]
		MEETS {
			Visit_POI_57();
		}

		VALUE Move_POI_62_POI_45() [6, 10]
		MEETS {
			Visit_POI_45();
		}

		VALUE Move_POI_62_POI_56() [2, 2]
		MEETS {
			Visit_POI_56();
		}

		VALUE Move_POI_62_POI_55() [2, 2]
		MEETS {
			Visit_POI_55();
		}

		VALUE Move_POI_62_POI_54() [7, 11]
		MEETS {
			Visit_POI_54();
		}

		VALUE Move_POI_62_POI_53() [4, 6]
		MEETS {
			Visit_POI_53();
		}

		VALUE Move_POI_62_POI_64() [1, 1]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_POI_62_POI_52() [7, 11]
		MEETS {
			Visit_POI_52();
		}

		VALUE Move_POI_62_POI_63() [1, 1]
		MEETS {
			Visit_POI_63();
		}

		VALUE Move_POI_62_POI_51() [3, 5]
		MEETS {
			Visit_POI_51();
		}

		VALUE Move_POI_62_POI_50() [5, 7]
		MEETS {
			Visit_POI_50();
		}

		VALUE Move_POI_62_POI_61() [3, 5]
		MEETS {
			Visit_POI_61();
		}

		VALUE Move_POI_62_POI_60() [6, 10]
		MEETS {
			Visit_POI_60();
		}

		VALUE Visit_POI_50() [24, 36]
		MEETS {
			Move_POI_50_POI_49();
			Move_POI_50_POI_48();
			Move_POI_50_POI_59();
			Move_POI_50_POI_47();
			Move_POI_50_POI_58();
			Move_POI_50_POI_46();
			Move_POI_50_POI_57();
			Move_POI_50_POI_45();
			Move_POI_50_POI_56();
			Move_POI_50_POI_55();
			Move_POI_50_POI_54();
			Move_POI_50_POI_53();
			Move_POI_50_POI_64();
			Move_POI_50_POI_52();
			Move_POI_50_POI_63();
			Move_POI_50_POI_51();
			Move_POI_50_POI_62();
			Move_POI_50_POI_61();
			Move_POI_50_POI_60();
			Finish();
		}

		VALUE Move_POI_50_POI_49() [1, 1]
		MEETS {
			Visit_POI_49();
		}

		VALUE Move_POI_50_POI_48() [6, 10]
		MEETS {
			Visit_POI_48();
		}

		VALUE Move_POI_50_POI_59() [6, 10]
		MEETS {
			Visit_POI_59();
		}

		VALUE Move_POI_50_POI_47() [6, 10]
		MEETS {
			Visit_POI_47();
		}

		VALUE Move_POI_50_POI_58() [6, 10]
		MEETS {
			Visit_POI_58();
		}

		VALUE Move_POI_50_POI_46() [5, 7]
		MEETS {
			Visit_POI_46();
		}

		VALUE Move_POI_50_POI_57() [4, 6]
		MEETS {
			Visit_POI_57();
		}

		VALUE Move_POI_50_POI_45() [1, 1]
		MEETS {
			Visit_POI_45();
		}

		VALUE Move_POI_50_POI_56() [1, 1]
		MEETS {
			Visit_POI_56();
		}

		VALUE Move_POI_50_POI_55() [4, 6]
		MEETS {
			Visit_POI_55();
		}

		VALUE Move_POI_50_POI_54() [4, 6]
		MEETS {
			Visit_POI_54();
		}

		VALUE Move_POI_50_POI_53() [2, 4]
		MEETS {
			Visit_POI_53();
		}

		VALUE Move_POI_50_POI_64() [4, 6]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_POI_50_POI_52() [2, 2]
		MEETS {
			Visit_POI_52();
		}

		VALUE Move_POI_50_POI_63() [7, 11]
		MEETS {
			Visit_POI_63();
		}

		VALUE Move_POI_50_POI_51() [7, 11]
		MEETS {
			Visit_POI_51();
		}

		VALUE Move_POI_50_POI_62() [1, 1]
		MEETS {
			Visit_POI_62();
		}

		VALUE Move_POI_50_POI_61() [3, 5]
		MEETS {
			Visit_POI_61();
		}

		VALUE Move_POI_50_POI_60() [5, 7]
		MEETS {
			Visit_POI_60();
		}

		VALUE Visit_POI_61() [12, 18]
		MEETS {
			Move_POI_61_POI_49();
			Move_POI_61_POI_48();
			Move_POI_61_POI_59();
			Move_POI_61_POI_47();
			Move_POI_61_POI_58();
			Move_POI_61_POI_46();
			Move_POI_61_POI_57();
			Move_POI_61_POI_45();
			Move_POI_61_POI_56();
			Move_POI_61_POI_55();
			Move_POI_61_POI_54();
			Move_POI_61_POI_53();
			Move_POI_61_POI_64();
			Move_POI_61_POI_52();
			Move_POI_61_POI_63();
			Move_POI_61_POI_51();
			Move_POI_61_POI_62();
			Move_POI_61_POI_50();
			Move_POI_61_POI_60();
			Finish();
		}

		VALUE Move_POI_61_POI_49() [2, 2]
		MEETS {
			Visit_POI_49();
		}

		VALUE Move_POI_61_POI_48() [5, 7]
		MEETS {
			Visit_POI_48();
		}

		VALUE Move_POI_61_POI_59() [6, 10]
		MEETS {
			Visit_POI_59();
		}

		VALUE Move_POI_61_POI_47() [6, 10]
		MEETS {
			Visit_POI_47();
		}

		VALUE Move_POI_61_POI_58() [5, 7]
		MEETS {
			Visit_POI_58();
		}

		VALUE Move_POI_61_POI_46() [7, 11]
		MEETS {
			Visit_POI_46();
		}

		VALUE Move_POI_61_POI_57() [3, 5]
		MEETS {
			Visit_POI_57();
		}

		VALUE Move_POI_61_POI_45() [2, 2]
		MEETS {
			Visit_POI_45();
		}

		VALUE Move_POI_61_POI_56() [2, 2]
		MEETS {
			Visit_POI_56();
		}

		VALUE Move_POI_61_POI_55() [2, 2]
		MEETS {
			Visit_POI_55();
		}

		VALUE Move_POI_61_POI_54() [5, 7]
		MEETS {
			Visit_POI_54();
		}

		VALUE Move_POI_61_POI_53() [7, 11]
		MEETS {
			Visit_POI_53();
		}

		VALUE Move_POI_61_POI_64() [3, 5]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_POI_61_POI_52() [4, 6]
		MEETS {
			Visit_POI_52();
		}

		VALUE Move_POI_61_POI_63() [1, 1]
		MEETS {
			Visit_POI_63();
		}

		VALUE Move_POI_61_POI_51() [2, 2]
		MEETS {
			Visit_POI_51();
		}

		VALUE Move_POI_61_POI_62() [2, 2]
		MEETS {
			Visit_POI_62();
		}

		VALUE Move_POI_61_POI_50() [5, 7]
		MEETS {
			Visit_POI_50();
		}

		VALUE Move_POI_61_POI_60() [4, 6]
		MEETS {
			Visit_POI_60();
		}

		VALUE Visit_POI_60() [8, 12]
		MEETS {
			Move_POI_60_POI_49();
			Move_POI_60_POI_48();
			Move_POI_60_POI_59();
			Move_POI_60_POI_47();
			Move_POI_60_POI_58();
			Move_POI_60_POI_46();
			Move_POI_60_POI_57();
			Move_POI_60_POI_45();
			Move_POI_60_POI_56();
			Move_POI_60_POI_55();
			Move_POI_60_POI_54();
			Move_POI_60_POI_53();
			Move_POI_60_POI_64();
			Move_POI_60_POI_52();
			Move_POI_60_POI_63();
			Move_POI_60_POI_51();
			Move_POI_60_POI_62();
			Move_POI_60_POI_50();
			Move_POI_60_POI_61();
			Finish();
		}

		VALUE Move_POI_60_POI_49() [6, 8]
		MEETS {
			Visit_POI_49();
		}

		VALUE Move_POI_60_POI_48() [6, 8]
		MEETS {
			Visit_POI_48();
		}

		VALUE Move_POI_60_POI_59() [2, 4]
		MEETS {
			Visit_POI_59();
		}

		VALUE Move_POI_60_POI_47() [2, 4]
		MEETS {
			Visit_POI_47();
		}

		VALUE Move_POI_60_POI_58() [2, 2]
		MEETS {
			Visit_POI_58();
		}

		VALUE Move_POI_60_POI_46() [6, 8]
		MEETS {
			Visit_POI_46();
		}

		VALUE Move_POI_60_POI_57() [4, 6]
		MEETS {
			Visit_POI_57();
		}

		VALUE Move_POI_60_POI_45() [7, 11]
		MEETS {
			Visit_POI_45();
		}

		VALUE Move_POI_60_POI_56() [6, 8]
		MEETS {
			Visit_POI_56();
		}

		VALUE Move_POI_60_POI_55() [4, 6]
		MEETS {
			Visit_POI_55();
		}

		VALUE Move_POI_60_POI_54() [1, 1]
		MEETS {
			Visit_POI_54();
		}

		VALUE Move_POI_60_POI_53() [6, 10]
		MEETS {
			Visit_POI_53();
		}

		VALUE Move_POI_60_POI_64() [6, 8]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_POI_60_POI_52() [6, 10]
		MEETS {
			Visit_POI_52();
		}

		VALUE Move_POI_60_POI_63() [2, 2]
		MEETS {
			Visit_POI_63();
		}

		VALUE Move_POI_60_POI_51() [3, 5]
		MEETS {
			Visit_POI_51();
		}

		VALUE Move_POI_60_POI_62() [3, 5]
		MEETS {
			Visit_POI_62();
		}

		VALUE Move_POI_60_POI_50() [2, 4]
		MEETS {
			Visit_POI_50();
		}

		VALUE Move_POI_60_POI_61() [7, 11]
		MEETS {
			Visit_POI_61();
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

			cd0 <!> TripPath.hops.Visit_POI_49();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_48();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_59();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_47();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_58();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_46();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_57();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_45();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_56();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_55();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_54();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_53();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_64();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_52();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_63();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_51();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_62();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_50();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_61();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_60();
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

