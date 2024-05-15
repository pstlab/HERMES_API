DOMAIN TRIP_PLANNING {

	TEMPORAL_MODULE tm = [0, 297], 1000;

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
		 Visit_POI_69(), Move_Home_POI_69(), Move_POI_69_POI_68(), Move_POI_69_POI_79(), Move_POI_69_POI_67(), Move_POI_69_POI_78(), Move_POI_69_POI_66(), Move_POI_69_POI_77(), Move_POI_69_POI_65(), Move_POI_69_POI_76(), Move_POI_69_POI_64(), Move_POI_69_POI_75(), Move_POI_69_POI_74(), Move_POI_69_POI_73(), Move_POI_69_POI_72(), Move_POI_69_POI_83(), Move_POI_69_POI_71(), Move_POI_69_POI_82(), Move_POI_69_POI_70(), Move_POI_69_POI_81(), Move_POI_69_POI_80(), 
		 Visit_POI_68(), Move_Home_POI_68(), Move_POI_68_POI_69(), Move_POI_68_POI_79(), Move_POI_68_POI_67(), Move_POI_68_POI_78(), Move_POI_68_POI_66(), Move_POI_68_POI_77(), Move_POI_68_POI_65(), Move_POI_68_POI_76(), Move_POI_68_POI_64(), Move_POI_68_POI_75(), Move_POI_68_POI_74(), Move_POI_68_POI_73(), Move_POI_68_POI_72(), Move_POI_68_POI_83(), Move_POI_68_POI_71(), Move_POI_68_POI_82(), Move_POI_68_POI_70(), Move_POI_68_POI_81(), Move_POI_68_POI_80(), 
		 Visit_POI_79(), Move_Home_POI_79(), Move_POI_79_POI_69(), Move_POI_79_POI_68(), Move_POI_79_POI_67(), Move_POI_79_POI_78(), Move_POI_79_POI_66(), Move_POI_79_POI_77(), Move_POI_79_POI_65(), Move_POI_79_POI_76(), Move_POI_79_POI_64(), Move_POI_79_POI_75(), Move_POI_79_POI_74(), Move_POI_79_POI_73(), Move_POI_79_POI_72(), Move_POI_79_POI_83(), Move_POI_79_POI_71(), Move_POI_79_POI_82(), Move_POI_79_POI_70(), Move_POI_79_POI_81(), Move_POI_79_POI_80(), 
		 Visit_POI_67(), Move_Home_POI_67(), Move_POI_67_POI_69(), Move_POI_67_POI_68(), Move_POI_67_POI_79(), Move_POI_67_POI_78(), Move_POI_67_POI_66(), Move_POI_67_POI_77(), Move_POI_67_POI_65(), Move_POI_67_POI_76(), Move_POI_67_POI_64(), Move_POI_67_POI_75(), Move_POI_67_POI_74(), Move_POI_67_POI_73(), Move_POI_67_POI_72(), Move_POI_67_POI_83(), Move_POI_67_POI_71(), Move_POI_67_POI_82(), Move_POI_67_POI_70(), Move_POI_67_POI_81(), Move_POI_67_POI_80(), 
		 Visit_POI_78(), Move_Home_POI_78(), Move_POI_78_POI_69(), Move_POI_78_POI_68(), Move_POI_78_POI_79(), Move_POI_78_POI_67(), Move_POI_78_POI_66(), Move_POI_78_POI_77(), Move_POI_78_POI_65(), Move_POI_78_POI_76(), Move_POI_78_POI_64(), Move_POI_78_POI_75(), Move_POI_78_POI_74(), Move_POI_78_POI_73(), Move_POI_78_POI_72(), Move_POI_78_POI_83(), Move_POI_78_POI_71(), Move_POI_78_POI_82(), Move_POI_78_POI_70(), Move_POI_78_POI_81(), Move_POI_78_POI_80(), 
		 Visit_POI_66(), Move_Home_POI_66(), Move_POI_66_POI_69(), Move_POI_66_POI_68(), Move_POI_66_POI_79(), Move_POI_66_POI_67(), Move_POI_66_POI_78(), Move_POI_66_POI_77(), Move_POI_66_POI_65(), Move_POI_66_POI_76(), Move_POI_66_POI_64(), Move_POI_66_POI_75(), Move_POI_66_POI_74(), Move_POI_66_POI_73(), Move_POI_66_POI_72(), Move_POI_66_POI_83(), Move_POI_66_POI_71(), Move_POI_66_POI_82(), Move_POI_66_POI_70(), Move_POI_66_POI_81(), Move_POI_66_POI_80(), 
		 Visit_POI_77(), Move_Home_POI_77(), Move_POI_77_POI_69(), Move_POI_77_POI_68(), Move_POI_77_POI_79(), Move_POI_77_POI_67(), Move_POI_77_POI_78(), Move_POI_77_POI_66(), Move_POI_77_POI_65(), Move_POI_77_POI_76(), Move_POI_77_POI_64(), Move_POI_77_POI_75(), Move_POI_77_POI_74(), Move_POI_77_POI_73(), Move_POI_77_POI_72(), Move_POI_77_POI_83(), Move_POI_77_POI_71(), Move_POI_77_POI_82(), Move_POI_77_POI_70(), Move_POI_77_POI_81(), Move_POI_77_POI_80(), 
		 Visit_POI_65(), Move_Home_POI_65(), Move_POI_65_POI_69(), Move_POI_65_POI_68(), Move_POI_65_POI_79(), Move_POI_65_POI_67(), Move_POI_65_POI_78(), Move_POI_65_POI_66(), Move_POI_65_POI_77(), Move_POI_65_POI_76(), Move_POI_65_POI_64(), Move_POI_65_POI_75(), Move_POI_65_POI_74(), Move_POI_65_POI_73(), Move_POI_65_POI_72(), Move_POI_65_POI_83(), Move_POI_65_POI_71(), Move_POI_65_POI_82(), Move_POI_65_POI_70(), Move_POI_65_POI_81(), Move_POI_65_POI_80(), 
		 Visit_POI_76(), Move_Home_POI_76(), Move_POI_76_POI_69(), Move_POI_76_POI_68(), Move_POI_76_POI_79(), Move_POI_76_POI_67(), Move_POI_76_POI_78(), Move_POI_76_POI_66(), Move_POI_76_POI_77(), Move_POI_76_POI_65(), Move_POI_76_POI_64(), Move_POI_76_POI_75(), Move_POI_76_POI_74(), Move_POI_76_POI_73(), Move_POI_76_POI_72(), Move_POI_76_POI_83(), Move_POI_76_POI_71(), Move_POI_76_POI_82(), Move_POI_76_POI_70(), Move_POI_76_POI_81(), Move_POI_76_POI_80(), 
		 Visit_POI_64(), Move_Home_POI_64(), Move_POI_64_POI_69(), Move_POI_64_POI_68(), Move_POI_64_POI_79(), Move_POI_64_POI_67(), Move_POI_64_POI_78(), Move_POI_64_POI_66(), Move_POI_64_POI_77(), Move_POI_64_POI_65(), Move_POI_64_POI_76(), Move_POI_64_POI_75(), Move_POI_64_POI_74(), Move_POI_64_POI_73(), Move_POI_64_POI_72(), Move_POI_64_POI_83(), Move_POI_64_POI_71(), Move_POI_64_POI_82(), Move_POI_64_POI_70(), Move_POI_64_POI_81(), Move_POI_64_POI_80(), 
		 Visit_POI_75(), Move_Home_POI_75(), Move_POI_75_POI_69(), Move_POI_75_POI_68(), Move_POI_75_POI_79(), Move_POI_75_POI_67(), Move_POI_75_POI_78(), Move_POI_75_POI_66(), Move_POI_75_POI_77(), Move_POI_75_POI_65(), Move_POI_75_POI_76(), Move_POI_75_POI_64(), Move_POI_75_POI_74(), Move_POI_75_POI_73(), Move_POI_75_POI_72(), Move_POI_75_POI_83(), Move_POI_75_POI_71(), Move_POI_75_POI_82(), Move_POI_75_POI_70(), Move_POI_75_POI_81(), Move_POI_75_POI_80(), 
		 Visit_POI_74(), Move_Home_POI_74(), Move_POI_74_POI_69(), Move_POI_74_POI_68(), Move_POI_74_POI_79(), Move_POI_74_POI_67(), Move_POI_74_POI_78(), Move_POI_74_POI_66(), Move_POI_74_POI_77(), Move_POI_74_POI_65(), Move_POI_74_POI_76(), Move_POI_74_POI_64(), Move_POI_74_POI_75(), Move_POI_74_POI_73(), Move_POI_74_POI_72(), Move_POI_74_POI_83(), Move_POI_74_POI_71(), Move_POI_74_POI_82(), Move_POI_74_POI_70(), Move_POI_74_POI_81(), Move_POI_74_POI_80(), 
		 Visit_POI_73(), Move_Home_POI_73(), Move_POI_73_POI_69(), Move_POI_73_POI_68(), Move_POI_73_POI_79(), Move_POI_73_POI_67(), Move_POI_73_POI_78(), Move_POI_73_POI_66(), Move_POI_73_POI_77(), Move_POI_73_POI_65(), Move_POI_73_POI_76(), Move_POI_73_POI_64(), Move_POI_73_POI_75(), Move_POI_73_POI_74(), Move_POI_73_POI_72(), Move_POI_73_POI_83(), Move_POI_73_POI_71(), Move_POI_73_POI_82(), Move_POI_73_POI_70(), Move_POI_73_POI_81(), Move_POI_73_POI_80(), 
		 Visit_POI_72(), Move_Home_POI_72(), Move_POI_72_POI_69(), Move_POI_72_POI_68(), Move_POI_72_POI_79(), Move_POI_72_POI_67(), Move_POI_72_POI_78(), Move_POI_72_POI_66(), Move_POI_72_POI_77(), Move_POI_72_POI_65(), Move_POI_72_POI_76(), Move_POI_72_POI_64(), Move_POI_72_POI_75(), Move_POI_72_POI_74(), Move_POI_72_POI_73(), Move_POI_72_POI_83(), Move_POI_72_POI_71(), Move_POI_72_POI_82(), Move_POI_72_POI_70(), Move_POI_72_POI_81(), Move_POI_72_POI_80(), 
		 Visit_POI_83(), Move_Home_POI_83(), Move_POI_83_POI_69(), Move_POI_83_POI_68(), Move_POI_83_POI_79(), Move_POI_83_POI_67(), Move_POI_83_POI_78(), Move_POI_83_POI_66(), Move_POI_83_POI_77(), Move_POI_83_POI_65(), Move_POI_83_POI_76(), Move_POI_83_POI_64(), Move_POI_83_POI_75(), Move_POI_83_POI_74(), Move_POI_83_POI_73(), Move_POI_83_POI_72(), Move_POI_83_POI_71(), Move_POI_83_POI_82(), Move_POI_83_POI_70(), Move_POI_83_POI_81(), Move_POI_83_POI_80(), 
		 Visit_POI_71(), Move_Home_POI_71(), Move_POI_71_POI_69(), Move_POI_71_POI_68(), Move_POI_71_POI_79(), Move_POI_71_POI_67(), Move_POI_71_POI_78(), Move_POI_71_POI_66(), Move_POI_71_POI_77(), Move_POI_71_POI_65(), Move_POI_71_POI_76(), Move_POI_71_POI_64(), Move_POI_71_POI_75(), Move_POI_71_POI_74(), Move_POI_71_POI_73(), Move_POI_71_POI_72(), Move_POI_71_POI_83(), Move_POI_71_POI_82(), Move_POI_71_POI_70(), Move_POI_71_POI_81(), Move_POI_71_POI_80(), 
		 Visit_POI_82(), Move_Home_POI_82(), Move_POI_82_POI_69(), Move_POI_82_POI_68(), Move_POI_82_POI_79(), Move_POI_82_POI_67(), Move_POI_82_POI_78(), Move_POI_82_POI_66(), Move_POI_82_POI_77(), Move_POI_82_POI_65(), Move_POI_82_POI_76(), Move_POI_82_POI_64(), Move_POI_82_POI_75(), Move_POI_82_POI_74(), Move_POI_82_POI_73(), Move_POI_82_POI_72(), Move_POI_82_POI_83(), Move_POI_82_POI_71(), Move_POI_82_POI_70(), Move_POI_82_POI_81(), Move_POI_82_POI_80(), 
		 Visit_POI_70(), Move_Home_POI_70(), Move_POI_70_POI_69(), Move_POI_70_POI_68(), Move_POI_70_POI_79(), Move_POI_70_POI_67(), Move_POI_70_POI_78(), Move_POI_70_POI_66(), Move_POI_70_POI_77(), Move_POI_70_POI_65(), Move_POI_70_POI_76(), Move_POI_70_POI_64(), Move_POI_70_POI_75(), Move_POI_70_POI_74(), Move_POI_70_POI_73(), Move_POI_70_POI_72(), Move_POI_70_POI_83(), Move_POI_70_POI_71(), Move_POI_70_POI_82(), Move_POI_70_POI_81(), Move_POI_70_POI_80(), 
		 Visit_POI_81(), Move_Home_POI_81(), Move_POI_81_POI_69(), Move_POI_81_POI_68(), Move_POI_81_POI_79(), Move_POI_81_POI_67(), Move_POI_81_POI_78(), Move_POI_81_POI_66(), Move_POI_81_POI_77(), Move_POI_81_POI_65(), Move_POI_81_POI_76(), Move_POI_81_POI_64(), Move_POI_81_POI_75(), Move_POI_81_POI_74(), Move_POI_81_POI_73(), Move_POI_81_POI_72(), Move_POI_81_POI_83(), Move_POI_81_POI_71(), Move_POI_81_POI_82(), Move_POI_81_POI_70(), Move_POI_81_POI_80(), 
		 Visit_POI_80(), Move_Home_POI_80(), Move_POI_80_POI_69(), Move_POI_80_POI_68(), Move_POI_80_POI_79(), Move_POI_80_POI_67(), Move_POI_80_POI_78(), Move_POI_80_POI_66(), Move_POI_80_POI_77(), Move_POI_80_POI_65(), Move_POI_80_POI_76(), Move_POI_80_POI_64(), Move_POI_80_POI_75(), Move_POI_80_POI_74(), Move_POI_80_POI_73(), Move_POI_80_POI_72(), Move_POI_80_POI_83(), Move_POI_80_POI_71(), Move_POI_80_POI_82(), Move_POI_80_POI_70(), Move_POI_80_POI_81(), 
	) {

		VALUE Home() [1, 1]
		MEETS {
			Move_Home_POI_69();
			Move_Home_POI_68();
			Move_Home_POI_79();
			Move_Home_POI_67();
			Move_Home_POI_78();
			Move_Home_POI_66();
			Move_Home_POI_77();
			Move_Home_POI_65();
			Move_Home_POI_76();
			Move_Home_POI_64();
			Move_Home_POI_75();
			Move_Home_POI_74();
			Move_Home_POI_73();
			Move_Home_POI_72();
			Move_Home_POI_83();
			Move_Home_POI_71();
			Move_Home_POI_82();
			Move_Home_POI_70();
			Move_Home_POI_81();
			Move_Home_POI_80();
		}

		VALUE Finish() [1, +INF]
		MEETS {
			Home();
		}

		VALUE Move_Home_POI_69() [7, 11]
		MEETS {
			Visit_POI_69();
		}

		VALUE Move_Home_POI_68() [2, 4]
		MEETS {
			Visit_POI_68();
		}

		VALUE Move_Home_POI_79() [2, 2]
		MEETS {
			Visit_POI_79();
		}

		VALUE Move_Home_POI_67() [4, 6]
		MEETS {
			Visit_POI_67();
		}

		VALUE Move_Home_POI_78() [7, 11]
		MEETS {
			Visit_POI_78();
		}

		VALUE Move_Home_POI_66() [5, 7]
		MEETS {
			Visit_POI_66();
		}

		VALUE Move_Home_POI_77() [1, 1]
		MEETS {
			Visit_POI_77();
		}

		VALUE Move_Home_POI_65() [6, 10]
		MEETS {
			Visit_POI_65();
		}

		VALUE Move_Home_POI_76() [2, 2]
		MEETS {
			Visit_POI_76();
		}

		VALUE Move_Home_POI_64() [2, 4]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_Home_POI_75() [5, 7]
		MEETS {
			Visit_POI_75();
		}

		VALUE Move_Home_POI_74() [2, 2]
		MEETS {
			Visit_POI_74();
		}

		VALUE Move_Home_POI_73() [1, 1]
		MEETS {
			Visit_POI_73();
		}

		VALUE Move_Home_POI_72() [4, 6]
		MEETS {
			Visit_POI_72();
		}

		VALUE Move_Home_POI_83() [4, 6]
		MEETS {
			Visit_POI_83();
		}

		VALUE Move_Home_POI_71() [6, 8]
		MEETS {
			Visit_POI_71();
		}

		VALUE Move_Home_POI_82() [5, 7]
		MEETS {
			Visit_POI_82();
		}

		VALUE Move_Home_POI_70() [3, 5]
		MEETS {
			Visit_POI_70();
		}

		VALUE Move_Home_POI_81() [4, 6]
		MEETS {
			Visit_POI_81();
		}

		VALUE Move_Home_POI_80() [4, 6]
		MEETS {
			Visit_POI_80();
		}

		VALUE Visit_POI_69() [24, 36]
		MEETS {
			Move_POI_69_POI_68();
			Move_POI_69_POI_79();
			Move_POI_69_POI_67();
			Move_POI_69_POI_78();
			Move_POI_69_POI_66();
			Move_POI_69_POI_77();
			Move_POI_69_POI_65();
			Move_POI_69_POI_76();
			Move_POI_69_POI_64();
			Move_POI_69_POI_75();
			Move_POI_69_POI_74();
			Move_POI_69_POI_73();
			Move_POI_69_POI_72();
			Move_POI_69_POI_83();
			Move_POI_69_POI_71();
			Move_POI_69_POI_82();
			Move_POI_69_POI_70();
			Move_POI_69_POI_81();
			Move_POI_69_POI_80();
			Finish();
		}

		VALUE Move_POI_69_POI_68() [6, 10]
		MEETS {
			Visit_POI_68();
		}

		VALUE Move_POI_69_POI_79() [2, 2]
		MEETS {
			Visit_POI_79();
		}

		VALUE Move_POI_69_POI_67() [1, 1]
		MEETS {
			Visit_POI_67();
		}

		VALUE Move_POI_69_POI_78() [3, 5]
		MEETS {
			Visit_POI_78();
		}

		VALUE Move_POI_69_POI_66() [2, 4]
		MEETS {
			Visit_POI_66();
		}

		VALUE Move_POI_69_POI_77() [2, 4]
		MEETS {
			Visit_POI_77();
		}

		VALUE Move_POI_69_POI_65() [6, 8]
		MEETS {
			Visit_POI_65();
		}

		VALUE Move_POI_69_POI_76() [2, 2]
		MEETS {
			Visit_POI_76();
		}

		VALUE Move_POI_69_POI_64() [6, 10]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_POI_69_POI_75() [2, 4]
		MEETS {
			Visit_POI_75();
		}

		VALUE Move_POI_69_POI_74() [6, 8]
		MEETS {
			Visit_POI_74();
		}

		VALUE Move_POI_69_POI_73() [1, 1]
		MEETS {
			Visit_POI_73();
		}

		VALUE Move_POI_69_POI_72() [3, 5]
		MEETS {
			Visit_POI_72();
		}

		VALUE Move_POI_69_POI_83() [5, 7]
		MEETS {
			Visit_POI_83();
		}

		VALUE Move_POI_69_POI_71() [3, 5]
		MEETS {
			Visit_POI_71();
		}

		VALUE Move_POI_69_POI_82() [2, 4]
		MEETS {
			Visit_POI_82();
		}

		VALUE Move_POI_69_POI_70() [2, 4]
		MEETS {
			Visit_POI_70();
		}

		VALUE Move_POI_69_POI_81() [4, 6]
		MEETS {
			Visit_POI_81();
		}

		VALUE Move_POI_69_POI_80() [2, 2]
		MEETS {
			Visit_POI_80();
		}

		VALUE Visit_POI_68() [24, 36]
		MEETS {
			Move_POI_68_POI_69();
			Move_POI_68_POI_79();
			Move_POI_68_POI_67();
			Move_POI_68_POI_78();
			Move_POI_68_POI_66();
			Move_POI_68_POI_77();
			Move_POI_68_POI_65();
			Move_POI_68_POI_76();
			Move_POI_68_POI_64();
			Move_POI_68_POI_75();
			Move_POI_68_POI_74();
			Move_POI_68_POI_73();
			Move_POI_68_POI_72();
			Move_POI_68_POI_83();
			Move_POI_68_POI_71();
			Move_POI_68_POI_82();
			Move_POI_68_POI_70();
			Move_POI_68_POI_81();
			Move_POI_68_POI_80();
			Finish();
		}

		VALUE Move_POI_68_POI_69() [7, 11]
		MEETS {
			Visit_POI_69();
		}

		VALUE Move_POI_68_POI_79() [3, 5]
		MEETS {
			Visit_POI_79();
		}

		VALUE Move_POI_68_POI_67() [5, 7]
		MEETS {
			Visit_POI_67();
		}

		VALUE Move_POI_68_POI_78() [6, 10]
		MEETS {
			Visit_POI_78();
		}

		VALUE Move_POI_68_POI_66() [5, 7]
		MEETS {
			Visit_POI_66();
		}

		VALUE Move_POI_68_POI_77() [5, 7]
		MEETS {
			Visit_POI_77();
		}

		VALUE Move_POI_68_POI_65() [5, 7]
		MEETS {
			Visit_POI_65();
		}

		VALUE Move_POI_68_POI_76() [5, 7]
		MEETS {
			Visit_POI_76();
		}

		VALUE Move_POI_68_POI_64() [1, 1]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_POI_68_POI_75() [2, 4]
		MEETS {
			Visit_POI_75();
		}

		VALUE Move_POI_68_POI_74() [7, 11]
		MEETS {
			Visit_POI_74();
		}

		VALUE Move_POI_68_POI_73() [6, 10]
		MEETS {
			Visit_POI_73();
		}

		VALUE Move_POI_68_POI_72() [3, 5]
		MEETS {
			Visit_POI_72();
		}

		VALUE Move_POI_68_POI_83() [4, 6]
		MEETS {
			Visit_POI_83();
		}

		VALUE Move_POI_68_POI_71() [6, 10]
		MEETS {
			Visit_POI_71();
		}

		VALUE Move_POI_68_POI_82() [3, 5]
		MEETS {
			Visit_POI_82();
		}

		VALUE Move_POI_68_POI_70() [6, 10]
		MEETS {
			Visit_POI_70();
		}

		VALUE Move_POI_68_POI_81() [6, 10]
		MEETS {
			Visit_POI_81();
		}

		VALUE Move_POI_68_POI_80() [7, 11]
		MEETS {
			Visit_POI_80();
		}

		VALUE Visit_POI_79() [8, 12]
		MEETS {
			Move_POI_79_POI_69();
			Move_POI_79_POI_68();
			Move_POI_79_POI_67();
			Move_POI_79_POI_78();
			Move_POI_79_POI_66();
			Move_POI_79_POI_77();
			Move_POI_79_POI_65();
			Move_POI_79_POI_76();
			Move_POI_79_POI_64();
			Move_POI_79_POI_75();
			Move_POI_79_POI_74();
			Move_POI_79_POI_73();
			Move_POI_79_POI_72();
			Move_POI_79_POI_83();
			Move_POI_79_POI_71();
			Move_POI_79_POI_82();
			Move_POI_79_POI_70();
			Move_POI_79_POI_81();
			Move_POI_79_POI_80();
			Finish();
		}

		VALUE Move_POI_79_POI_69() [6, 8]
		MEETS {
			Visit_POI_69();
		}

		VALUE Move_POI_79_POI_68() [2, 4]
		MEETS {
			Visit_POI_68();
		}

		VALUE Move_POI_79_POI_67() [1, 1]
		MEETS {
			Visit_POI_67();
		}

		VALUE Move_POI_79_POI_78() [5, 7]
		MEETS {
			Visit_POI_78();
		}

		VALUE Move_POI_79_POI_66() [7, 11]
		MEETS {
			Visit_POI_66();
		}

		VALUE Move_POI_79_POI_77() [1, 1]
		MEETS {
			Visit_POI_77();
		}

		VALUE Move_POI_79_POI_65() [7, 11]
		MEETS {
			Visit_POI_65();
		}

		VALUE Move_POI_79_POI_76() [2, 4]
		MEETS {
			Visit_POI_76();
		}

		VALUE Move_POI_79_POI_64() [5, 7]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_POI_79_POI_75() [4, 6]
		MEETS {
			Visit_POI_75();
		}

		VALUE Move_POI_79_POI_74() [2, 4]
		MEETS {
			Visit_POI_74();
		}

		VALUE Move_POI_79_POI_73() [1, 1]
		MEETS {
			Visit_POI_73();
		}

		VALUE Move_POI_79_POI_72() [6, 8]
		MEETS {
			Visit_POI_72();
		}

		VALUE Move_POI_79_POI_83() [2, 2]
		MEETS {
			Visit_POI_83();
		}

		VALUE Move_POI_79_POI_71() [2, 4]
		MEETS {
			Visit_POI_71();
		}

		VALUE Move_POI_79_POI_82() [1, 1]
		MEETS {
			Visit_POI_82();
		}

		VALUE Move_POI_79_POI_70() [3, 5]
		MEETS {
			Visit_POI_70();
		}

		VALUE Move_POI_79_POI_81() [6, 10]
		MEETS {
			Visit_POI_81();
		}

		VALUE Move_POI_79_POI_80() [7, 11]
		MEETS {
			Visit_POI_80();
		}

		VALUE Visit_POI_67() [24, 36]
		MEETS {
			Move_POI_67_POI_69();
			Move_POI_67_POI_68();
			Move_POI_67_POI_79();
			Move_POI_67_POI_78();
			Move_POI_67_POI_66();
			Move_POI_67_POI_77();
			Move_POI_67_POI_65();
			Move_POI_67_POI_76();
			Move_POI_67_POI_64();
			Move_POI_67_POI_75();
			Move_POI_67_POI_74();
			Move_POI_67_POI_73();
			Move_POI_67_POI_72();
			Move_POI_67_POI_83();
			Move_POI_67_POI_71();
			Move_POI_67_POI_82();
			Move_POI_67_POI_70();
			Move_POI_67_POI_81();
			Move_POI_67_POI_80();
			Finish();
		}

		VALUE Move_POI_67_POI_69() [7, 11]
		MEETS {
			Visit_POI_69();
		}

		VALUE Move_POI_67_POI_68() [6, 10]
		MEETS {
			Visit_POI_68();
		}

		VALUE Move_POI_67_POI_79() [4, 6]
		MEETS {
			Visit_POI_79();
		}

		VALUE Move_POI_67_POI_78() [2, 4]
		MEETS {
			Visit_POI_78();
		}

		VALUE Move_POI_67_POI_66() [5, 7]
		MEETS {
			Visit_POI_66();
		}

		VALUE Move_POI_67_POI_77() [6, 10]
		MEETS {
			Visit_POI_77();
		}

		VALUE Move_POI_67_POI_65() [7, 11]
		MEETS {
			Visit_POI_65();
		}

		VALUE Move_POI_67_POI_76() [6, 8]
		MEETS {
			Visit_POI_76();
		}

		VALUE Move_POI_67_POI_64() [2, 4]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_POI_67_POI_75() [4, 6]
		MEETS {
			Visit_POI_75();
		}

		VALUE Move_POI_67_POI_74() [2, 2]
		MEETS {
			Visit_POI_74();
		}

		VALUE Move_POI_67_POI_73() [1, 1]
		MEETS {
			Visit_POI_73();
		}

		VALUE Move_POI_67_POI_72() [6, 8]
		MEETS {
			Visit_POI_72();
		}

		VALUE Move_POI_67_POI_83() [2, 4]
		MEETS {
			Visit_POI_83();
		}

		VALUE Move_POI_67_POI_71() [2, 2]
		MEETS {
			Visit_POI_71();
		}

		VALUE Move_POI_67_POI_82() [6, 10]
		MEETS {
			Visit_POI_82();
		}

		VALUE Move_POI_67_POI_70() [4, 6]
		MEETS {
			Visit_POI_70();
		}

		VALUE Move_POI_67_POI_81() [7, 11]
		MEETS {
			Visit_POI_81();
		}

		VALUE Move_POI_67_POI_80() [6, 8]
		MEETS {
			Visit_POI_80();
		}

		VALUE Visit_POI_78() [8, 12]
		MEETS {
			Move_POI_78_POI_69();
			Move_POI_78_POI_68();
			Move_POI_78_POI_79();
			Move_POI_78_POI_67();
			Move_POI_78_POI_66();
			Move_POI_78_POI_77();
			Move_POI_78_POI_65();
			Move_POI_78_POI_76();
			Move_POI_78_POI_64();
			Move_POI_78_POI_75();
			Move_POI_78_POI_74();
			Move_POI_78_POI_73();
			Move_POI_78_POI_72();
			Move_POI_78_POI_83();
			Move_POI_78_POI_71();
			Move_POI_78_POI_82();
			Move_POI_78_POI_70();
			Move_POI_78_POI_81();
			Move_POI_78_POI_80();
			Finish();
		}

		VALUE Move_POI_78_POI_69() [4, 6]
		MEETS {
			Visit_POI_69();
		}

		VALUE Move_POI_78_POI_68() [4, 6]
		MEETS {
			Visit_POI_68();
		}

		VALUE Move_POI_78_POI_79() [6, 10]
		MEETS {
			Visit_POI_79();
		}

		VALUE Move_POI_78_POI_67() [1, 1]
		MEETS {
			Visit_POI_67();
		}

		VALUE Move_POI_78_POI_66() [2, 2]
		MEETS {
			Visit_POI_66();
		}

		VALUE Move_POI_78_POI_77() [6, 8]
		MEETS {
			Visit_POI_77();
		}

		VALUE Move_POI_78_POI_65() [6, 10]
		MEETS {
			Visit_POI_65();
		}

		VALUE Move_POI_78_POI_76() [2, 4]
		MEETS {
			Visit_POI_76();
		}

		VALUE Move_POI_78_POI_64() [3, 5]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_POI_78_POI_75() [2, 2]
		MEETS {
			Visit_POI_75();
		}

		VALUE Move_POI_78_POI_74() [6, 10]
		MEETS {
			Visit_POI_74();
		}

		VALUE Move_POI_78_POI_73() [6, 10]
		MEETS {
			Visit_POI_73();
		}

		VALUE Move_POI_78_POI_72() [3, 5]
		MEETS {
			Visit_POI_72();
		}

		VALUE Move_POI_78_POI_83() [5, 7]
		MEETS {
			Visit_POI_83();
		}

		VALUE Move_POI_78_POI_71() [1, 1]
		MEETS {
			Visit_POI_71();
		}

		VALUE Move_POI_78_POI_82() [4, 6]
		MEETS {
			Visit_POI_82();
		}

		VALUE Move_POI_78_POI_70() [2, 4]
		MEETS {
			Visit_POI_70();
		}

		VALUE Move_POI_78_POI_81() [1, 1]
		MEETS {
			Visit_POI_81();
		}

		VALUE Move_POI_78_POI_80() [3, 5]
		MEETS {
			Visit_POI_80();
		}

		VALUE Visit_POI_66() [8, 12]
		MEETS {
			Move_POI_66_POI_69();
			Move_POI_66_POI_68();
			Move_POI_66_POI_79();
			Move_POI_66_POI_67();
			Move_POI_66_POI_78();
			Move_POI_66_POI_77();
			Move_POI_66_POI_65();
			Move_POI_66_POI_76();
			Move_POI_66_POI_64();
			Move_POI_66_POI_75();
			Move_POI_66_POI_74();
			Move_POI_66_POI_73();
			Move_POI_66_POI_72();
			Move_POI_66_POI_83();
			Move_POI_66_POI_71();
			Move_POI_66_POI_82();
			Move_POI_66_POI_70();
			Move_POI_66_POI_81();
			Move_POI_66_POI_80();
			Finish();
		}

		VALUE Move_POI_66_POI_69() [1, 1]
		MEETS {
			Visit_POI_69();
		}

		VALUE Move_POI_66_POI_68() [1, 1]
		MEETS {
			Visit_POI_68();
		}

		VALUE Move_POI_66_POI_79() [3, 5]
		MEETS {
			Visit_POI_79();
		}

		VALUE Move_POI_66_POI_67() [7, 11]
		MEETS {
			Visit_POI_67();
		}

		VALUE Move_POI_66_POI_78() [3, 5]
		MEETS {
			Visit_POI_78();
		}

		VALUE Move_POI_66_POI_77() [4, 6]
		MEETS {
			Visit_POI_77();
		}

		VALUE Move_POI_66_POI_65() [2, 2]
		MEETS {
			Visit_POI_65();
		}

		VALUE Move_POI_66_POI_76() [4, 6]
		MEETS {
			Visit_POI_76();
		}

		VALUE Move_POI_66_POI_64() [5, 7]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_POI_66_POI_75() [2, 2]
		MEETS {
			Visit_POI_75();
		}

		VALUE Move_POI_66_POI_74() [3, 5]
		MEETS {
			Visit_POI_74();
		}

		VALUE Move_POI_66_POI_73() [7, 11]
		MEETS {
			Visit_POI_73();
		}

		VALUE Move_POI_66_POI_72() [1, 1]
		MEETS {
			Visit_POI_72();
		}

		VALUE Move_POI_66_POI_83() [4, 6]
		MEETS {
			Visit_POI_83();
		}

		VALUE Move_POI_66_POI_71() [2, 2]
		MEETS {
			Visit_POI_71();
		}

		VALUE Move_POI_66_POI_82() [2, 2]
		MEETS {
			Visit_POI_82();
		}

		VALUE Move_POI_66_POI_70() [4, 6]
		MEETS {
			Visit_POI_70();
		}

		VALUE Move_POI_66_POI_81() [6, 8]
		MEETS {
			Visit_POI_81();
		}

		VALUE Move_POI_66_POI_80() [6, 10]
		MEETS {
			Visit_POI_80();
		}

		VALUE Visit_POI_77() [24, 36]
		MEETS {
			Move_POI_77_POI_69();
			Move_POI_77_POI_68();
			Move_POI_77_POI_79();
			Move_POI_77_POI_67();
			Move_POI_77_POI_78();
			Move_POI_77_POI_66();
			Move_POI_77_POI_65();
			Move_POI_77_POI_76();
			Move_POI_77_POI_64();
			Move_POI_77_POI_75();
			Move_POI_77_POI_74();
			Move_POI_77_POI_73();
			Move_POI_77_POI_72();
			Move_POI_77_POI_83();
			Move_POI_77_POI_71();
			Move_POI_77_POI_82();
			Move_POI_77_POI_70();
			Move_POI_77_POI_81();
			Move_POI_77_POI_80();
			Finish();
		}

		VALUE Move_POI_77_POI_69() [2, 4]
		MEETS {
			Visit_POI_69();
		}

		VALUE Move_POI_77_POI_68() [6, 10]
		MEETS {
			Visit_POI_68();
		}

		VALUE Move_POI_77_POI_79() [7, 11]
		MEETS {
			Visit_POI_79();
		}

		VALUE Move_POI_77_POI_67() [3, 5]
		MEETS {
			Visit_POI_67();
		}

		VALUE Move_POI_77_POI_78() [3, 5]
		MEETS {
			Visit_POI_78();
		}

		VALUE Move_POI_77_POI_66() [6, 8]
		MEETS {
			Visit_POI_66();
		}

		VALUE Move_POI_77_POI_65() [2, 4]
		MEETS {
			Visit_POI_65();
		}

		VALUE Move_POI_77_POI_76() [2, 2]
		MEETS {
			Visit_POI_76();
		}

		VALUE Move_POI_77_POI_64() [5, 7]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_POI_77_POI_75() [3, 5]
		MEETS {
			Visit_POI_75();
		}

		VALUE Move_POI_77_POI_74() [5, 7]
		MEETS {
			Visit_POI_74();
		}

		VALUE Move_POI_77_POI_73() [7, 11]
		MEETS {
			Visit_POI_73();
		}

		VALUE Move_POI_77_POI_72() [2, 2]
		MEETS {
			Visit_POI_72();
		}

		VALUE Move_POI_77_POI_83() [4, 6]
		MEETS {
			Visit_POI_83();
		}

		VALUE Move_POI_77_POI_71() [5, 7]
		MEETS {
			Visit_POI_71();
		}

		VALUE Move_POI_77_POI_82() [4, 6]
		MEETS {
			Visit_POI_82();
		}

		VALUE Move_POI_77_POI_70() [2, 2]
		MEETS {
			Visit_POI_70();
		}

		VALUE Move_POI_77_POI_81() [2, 2]
		MEETS {
			Visit_POI_81();
		}

		VALUE Move_POI_77_POI_80() [5, 7]
		MEETS {
			Visit_POI_80();
		}

		VALUE Visit_POI_65() [72, 108]
		MEETS {
			Move_POI_65_POI_69();
			Move_POI_65_POI_68();
			Move_POI_65_POI_79();
			Move_POI_65_POI_67();
			Move_POI_65_POI_78();
			Move_POI_65_POI_66();
			Move_POI_65_POI_77();
			Move_POI_65_POI_76();
			Move_POI_65_POI_64();
			Move_POI_65_POI_75();
			Move_POI_65_POI_74();
			Move_POI_65_POI_73();
			Move_POI_65_POI_72();
			Move_POI_65_POI_83();
			Move_POI_65_POI_71();
			Move_POI_65_POI_82();
			Move_POI_65_POI_70();
			Move_POI_65_POI_81();
			Move_POI_65_POI_80();
			Finish();
		}

		VALUE Move_POI_65_POI_69() [3, 5]
		MEETS {
			Visit_POI_69();
		}

		VALUE Move_POI_65_POI_68() [6, 10]
		MEETS {
			Visit_POI_68();
		}

		VALUE Move_POI_65_POI_79() [5, 7]
		MEETS {
			Visit_POI_79();
		}

		VALUE Move_POI_65_POI_67() [1, 1]
		MEETS {
			Visit_POI_67();
		}

		VALUE Move_POI_65_POI_78() [2, 2]
		MEETS {
			Visit_POI_78();
		}

		VALUE Move_POI_65_POI_66() [6, 8]
		MEETS {
			Visit_POI_66();
		}

		VALUE Move_POI_65_POI_77() [7, 11]
		MEETS {
			Visit_POI_77();
		}

		VALUE Move_POI_65_POI_76() [4, 6]
		MEETS {
			Visit_POI_76();
		}

		VALUE Move_POI_65_POI_64() [1, 1]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_POI_65_POI_75() [5, 7]
		MEETS {
			Visit_POI_75();
		}

		VALUE Move_POI_65_POI_74() [7, 11]
		MEETS {
			Visit_POI_74();
		}

		VALUE Move_POI_65_POI_73() [3, 5]
		MEETS {
			Visit_POI_73();
		}

		VALUE Move_POI_65_POI_72() [5, 7]
		MEETS {
			Visit_POI_72();
		}

		VALUE Move_POI_65_POI_83() [3, 5]
		MEETS {
			Visit_POI_83();
		}

		VALUE Move_POI_65_POI_71() [5, 7]
		MEETS {
			Visit_POI_71();
		}

		VALUE Move_POI_65_POI_82() [6, 10]
		MEETS {
			Visit_POI_82();
		}

		VALUE Move_POI_65_POI_70() [2, 4]
		MEETS {
			Visit_POI_70();
		}

		VALUE Move_POI_65_POI_81() [6, 10]
		MEETS {
			Visit_POI_81();
		}

		VALUE Move_POI_65_POI_80() [2, 2]
		MEETS {
			Visit_POI_80();
		}

		VALUE Visit_POI_76() [24, 36]
		MEETS {
			Move_POI_76_POI_69();
			Move_POI_76_POI_68();
			Move_POI_76_POI_79();
			Move_POI_76_POI_67();
			Move_POI_76_POI_78();
			Move_POI_76_POI_66();
			Move_POI_76_POI_77();
			Move_POI_76_POI_65();
			Move_POI_76_POI_64();
			Move_POI_76_POI_75();
			Move_POI_76_POI_74();
			Move_POI_76_POI_73();
			Move_POI_76_POI_72();
			Move_POI_76_POI_83();
			Move_POI_76_POI_71();
			Move_POI_76_POI_82();
			Move_POI_76_POI_70();
			Move_POI_76_POI_81();
			Move_POI_76_POI_80();
			Finish();
		}

		VALUE Move_POI_76_POI_69() [6, 10]
		MEETS {
			Visit_POI_69();
		}

		VALUE Move_POI_76_POI_68() [2, 4]
		MEETS {
			Visit_POI_68();
		}

		VALUE Move_POI_76_POI_79() [2, 4]
		MEETS {
			Visit_POI_79();
		}

		VALUE Move_POI_76_POI_67() [6, 8]
		MEETS {
			Visit_POI_67();
		}

		VALUE Move_POI_76_POI_78() [6, 8]
		MEETS {
			Visit_POI_78();
		}

		VALUE Move_POI_76_POI_66() [6, 10]
		MEETS {
			Visit_POI_66();
		}

		VALUE Move_POI_76_POI_77() [2, 2]
		MEETS {
			Visit_POI_77();
		}

		VALUE Move_POI_76_POI_65() [6, 8]
		MEETS {
			Visit_POI_65();
		}

		VALUE Move_POI_76_POI_64() [2, 4]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_POI_76_POI_75() [4, 6]
		MEETS {
			Visit_POI_75();
		}

		VALUE Move_POI_76_POI_74() [5, 7]
		MEETS {
			Visit_POI_74();
		}

		VALUE Move_POI_76_POI_73() [3, 5]
		MEETS {
			Visit_POI_73();
		}

		VALUE Move_POI_76_POI_72() [1, 1]
		MEETS {
			Visit_POI_72();
		}

		VALUE Move_POI_76_POI_83() [1, 1]
		MEETS {
			Visit_POI_83();
		}

		VALUE Move_POI_76_POI_71() [2, 2]
		MEETS {
			Visit_POI_71();
		}

		VALUE Move_POI_76_POI_82() [2, 2]
		MEETS {
			Visit_POI_82();
		}

		VALUE Move_POI_76_POI_70() [6, 8]
		MEETS {
			Visit_POI_70();
		}

		VALUE Move_POI_76_POI_81() [5, 7]
		MEETS {
			Visit_POI_81();
		}

		VALUE Move_POI_76_POI_80() [6, 10]
		MEETS {
			Visit_POI_80();
		}

		VALUE Visit_POI_64() [24, 36]
		MEETS {
			Move_POI_64_POI_69();
			Move_POI_64_POI_68();
			Move_POI_64_POI_79();
			Move_POI_64_POI_67();
			Move_POI_64_POI_78();
			Move_POI_64_POI_66();
			Move_POI_64_POI_77();
			Move_POI_64_POI_65();
			Move_POI_64_POI_76();
			Move_POI_64_POI_75();
			Move_POI_64_POI_74();
			Move_POI_64_POI_73();
			Move_POI_64_POI_72();
			Move_POI_64_POI_83();
			Move_POI_64_POI_71();
			Move_POI_64_POI_82();
			Move_POI_64_POI_70();
			Move_POI_64_POI_81();
			Move_POI_64_POI_80();
			Finish();
		}

		VALUE Move_POI_64_POI_69() [2, 2]
		MEETS {
			Visit_POI_69();
		}

		VALUE Move_POI_64_POI_68() [6, 10]
		MEETS {
			Visit_POI_68();
		}

		VALUE Move_POI_64_POI_79() [7, 11]
		MEETS {
			Visit_POI_79();
		}

		VALUE Move_POI_64_POI_67() [4, 6]
		MEETS {
			Visit_POI_67();
		}

		VALUE Move_POI_64_POI_78() [4, 6]
		MEETS {
			Visit_POI_78();
		}

		VALUE Move_POI_64_POI_66() [5, 7]
		MEETS {
			Visit_POI_66();
		}

		VALUE Move_POI_64_POI_77() [2, 2]
		MEETS {
			Visit_POI_77();
		}

		VALUE Move_POI_64_POI_65() [5, 7]
		MEETS {
			Visit_POI_65();
		}

		VALUE Move_POI_64_POI_76() [1, 1]
		MEETS {
			Visit_POI_76();
		}

		VALUE Move_POI_64_POI_75() [3, 5]
		MEETS {
			Visit_POI_75();
		}

		VALUE Move_POI_64_POI_74() [7, 11]
		MEETS {
			Visit_POI_74();
		}

		VALUE Move_POI_64_POI_73() [4, 6]
		MEETS {
			Visit_POI_73();
		}

		VALUE Move_POI_64_POI_72() [5, 7]
		MEETS {
			Visit_POI_72();
		}

		VALUE Move_POI_64_POI_83() [3, 5]
		MEETS {
			Visit_POI_83();
		}

		VALUE Move_POI_64_POI_71() [2, 2]
		MEETS {
			Visit_POI_71();
		}

		VALUE Move_POI_64_POI_82() [2, 4]
		MEETS {
			Visit_POI_82();
		}

		VALUE Move_POI_64_POI_70() [6, 10]
		MEETS {
			Visit_POI_70();
		}

		VALUE Move_POI_64_POI_81() [3, 5]
		MEETS {
			Visit_POI_81();
		}

		VALUE Move_POI_64_POI_80() [6, 8]
		MEETS {
			Visit_POI_80();
		}

		VALUE Visit_POI_75() [8, 12]
		MEETS {
			Move_POI_75_POI_69();
			Move_POI_75_POI_68();
			Move_POI_75_POI_79();
			Move_POI_75_POI_67();
			Move_POI_75_POI_78();
			Move_POI_75_POI_66();
			Move_POI_75_POI_77();
			Move_POI_75_POI_65();
			Move_POI_75_POI_76();
			Move_POI_75_POI_64();
			Move_POI_75_POI_74();
			Move_POI_75_POI_73();
			Move_POI_75_POI_72();
			Move_POI_75_POI_83();
			Move_POI_75_POI_71();
			Move_POI_75_POI_82();
			Move_POI_75_POI_70();
			Move_POI_75_POI_81();
			Move_POI_75_POI_80();
			Finish();
		}

		VALUE Move_POI_75_POI_69() [4, 6]
		MEETS {
			Visit_POI_69();
		}

		VALUE Move_POI_75_POI_68() [1, 1]
		MEETS {
			Visit_POI_68();
		}

		VALUE Move_POI_75_POI_79() [7, 11]
		MEETS {
			Visit_POI_79();
		}

		VALUE Move_POI_75_POI_67() [7, 11]
		MEETS {
			Visit_POI_67();
		}

		VALUE Move_POI_75_POI_78() [2, 4]
		MEETS {
			Visit_POI_78();
		}

		VALUE Move_POI_75_POI_66() [6, 10]
		MEETS {
			Visit_POI_66();
		}

		VALUE Move_POI_75_POI_77() [1, 1]
		MEETS {
			Visit_POI_77();
		}

		VALUE Move_POI_75_POI_65() [7, 11]
		MEETS {
			Visit_POI_65();
		}

		VALUE Move_POI_75_POI_76() [2, 4]
		MEETS {
			Visit_POI_76();
		}

		VALUE Move_POI_75_POI_64() [4, 6]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_POI_75_POI_74() [6, 8]
		MEETS {
			Visit_POI_74();
		}

		VALUE Move_POI_75_POI_73() [6, 10]
		MEETS {
			Visit_POI_73();
		}

		VALUE Move_POI_75_POI_72() [6, 10]
		MEETS {
			Visit_POI_72();
		}

		VALUE Move_POI_75_POI_83() [7, 11]
		MEETS {
			Visit_POI_83();
		}

		VALUE Move_POI_75_POI_71() [6, 10]
		MEETS {
			Visit_POI_71();
		}

		VALUE Move_POI_75_POI_82() [6, 8]
		MEETS {
			Visit_POI_82();
		}

		VALUE Move_POI_75_POI_70() [6, 10]
		MEETS {
			Visit_POI_70();
		}

		VALUE Move_POI_75_POI_81() [5, 7]
		MEETS {
			Visit_POI_81();
		}

		VALUE Move_POI_75_POI_80() [2, 2]
		MEETS {
			Visit_POI_80();
		}

		VALUE Visit_POI_74() [24, 36]
		MEETS {
			Move_POI_74_POI_69();
			Move_POI_74_POI_68();
			Move_POI_74_POI_79();
			Move_POI_74_POI_67();
			Move_POI_74_POI_78();
			Move_POI_74_POI_66();
			Move_POI_74_POI_77();
			Move_POI_74_POI_65();
			Move_POI_74_POI_76();
			Move_POI_74_POI_64();
			Move_POI_74_POI_75();
			Move_POI_74_POI_73();
			Move_POI_74_POI_72();
			Move_POI_74_POI_83();
			Move_POI_74_POI_71();
			Move_POI_74_POI_82();
			Move_POI_74_POI_70();
			Move_POI_74_POI_81();
			Move_POI_74_POI_80();
			Finish();
		}

		VALUE Move_POI_74_POI_69() [2, 4]
		MEETS {
			Visit_POI_69();
		}

		VALUE Move_POI_74_POI_68() [6, 8]
		MEETS {
			Visit_POI_68();
		}

		VALUE Move_POI_74_POI_79() [6, 8]
		MEETS {
			Visit_POI_79();
		}

		VALUE Move_POI_74_POI_67() [2, 4]
		MEETS {
			Visit_POI_67();
		}

		VALUE Move_POI_74_POI_78() [3, 5]
		MEETS {
			Visit_POI_78();
		}

		VALUE Move_POI_74_POI_66() [6, 8]
		MEETS {
			Visit_POI_66();
		}

		VALUE Move_POI_74_POI_77() [7, 11]
		MEETS {
			Visit_POI_77();
		}

		VALUE Move_POI_74_POI_65() [3, 5]
		MEETS {
			Visit_POI_65();
		}

		VALUE Move_POI_74_POI_76() [7, 11]
		MEETS {
			Visit_POI_76();
		}

		VALUE Move_POI_74_POI_64() [4, 6]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_POI_74_POI_75() [3, 5]
		MEETS {
			Visit_POI_75();
		}

		VALUE Move_POI_74_POI_73() [2, 2]
		MEETS {
			Visit_POI_73();
		}

		VALUE Move_POI_74_POI_72() [7, 11]
		MEETS {
			Visit_POI_72();
		}

		VALUE Move_POI_74_POI_83() [2, 2]
		MEETS {
			Visit_POI_83();
		}

		VALUE Move_POI_74_POI_71() [7, 11]
		MEETS {
			Visit_POI_71();
		}

		VALUE Move_POI_74_POI_82() [2, 2]
		MEETS {
			Visit_POI_82();
		}

		VALUE Move_POI_74_POI_70() [7, 11]
		MEETS {
			Visit_POI_70();
		}

		VALUE Move_POI_74_POI_81() [4, 6]
		MEETS {
			Visit_POI_81();
		}

		VALUE Move_POI_74_POI_80() [1, 1]
		MEETS {
			Visit_POI_80();
		}

		VALUE Visit_POI_73() [8, 12]
		MEETS {
			Move_POI_73_POI_69();
			Move_POI_73_POI_68();
			Move_POI_73_POI_79();
			Move_POI_73_POI_67();
			Move_POI_73_POI_78();
			Move_POI_73_POI_66();
			Move_POI_73_POI_77();
			Move_POI_73_POI_65();
			Move_POI_73_POI_76();
			Move_POI_73_POI_64();
			Move_POI_73_POI_75();
			Move_POI_73_POI_74();
			Move_POI_73_POI_72();
			Move_POI_73_POI_83();
			Move_POI_73_POI_71();
			Move_POI_73_POI_82();
			Move_POI_73_POI_70();
			Move_POI_73_POI_81();
			Move_POI_73_POI_80();
			Finish();
		}

		VALUE Move_POI_73_POI_69() [2, 4]
		MEETS {
			Visit_POI_69();
		}

		VALUE Move_POI_73_POI_68() [2, 4]
		MEETS {
			Visit_POI_68();
		}

		VALUE Move_POI_73_POI_79() [3, 5]
		MEETS {
			Visit_POI_79();
		}

		VALUE Move_POI_73_POI_67() [1, 1]
		MEETS {
			Visit_POI_67();
		}

		VALUE Move_POI_73_POI_78() [1, 1]
		MEETS {
			Visit_POI_78();
		}

		VALUE Move_POI_73_POI_66() [2, 4]
		MEETS {
			Visit_POI_66();
		}

		VALUE Move_POI_73_POI_77() [2, 2]
		MEETS {
			Visit_POI_77();
		}

		VALUE Move_POI_73_POI_65() [3, 5]
		MEETS {
			Visit_POI_65();
		}

		VALUE Move_POI_73_POI_76() [6, 10]
		MEETS {
			Visit_POI_76();
		}

		VALUE Move_POI_73_POI_64() [1, 1]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_POI_73_POI_75() [7, 11]
		MEETS {
			Visit_POI_75();
		}

		VALUE Move_POI_73_POI_74() [3, 5]
		MEETS {
			Visit_POI_74();
		}

		VALUE Move_POI_73_POI_72() [7, 11]
		MEETS {
			Visit_POI_72();
		}

		VALUE Move_POI_73_POI_83() [6, 8]
		MEETS {
			Visit_POI_83();
		}

		VALUE Move_POI_73_POI_71() [1, 1]
		MEETS {
			Visit_POI_71();
		}

		VALUE Move_POI_73_POI_82() [2, 4]
		MEETS {
			Visit_POI_82();
		}

		VALUE Move_POI_73_POI_70() [4, 6]
		MEETS {
			Visit_POI_70();
		}

		VALUE Move_POI_73_POI_81() [5, 7]
		MEETS {
			Visit_POI_81();
		}

		VALUE Move_POI_73_POI_80() [7, 11]
		MEETS {
			Visit_POI_80();
		}

		VALUE Visit_POI_72() [16, 24]
		MEETS {
			Move_POI_72_POI_69();
			Move_POI_72_POI_68();
			Move_POI_72_POI_79();
			Move_POI_72_POI_67();
			Move_POI_72_POI_78();
			Move_POI_72_POI_66();
			Move_POI_72_POI_77();
			Move_POI_72_POI_65();
			Move_POI_72_POI_76();
			Move_POI_72_POI_64();
			Move_POI_72_POI_75();
			Move_POI_72_POI_74();
			Move_POI_72_POI_73();
			Move_POI_72_POI_83();
			Move_POI_72_POI_71();
			Move_POI_72_POI_82();
			Move_POI_72_POI_70();
			Move_POI_72_POI_81();
			Move_POI_72_POI_80();
			Finish();
		}

		VALUE Move_POI_72_POI_69() [2, 4]
		MEETS {
			Visit_POI_69();
		}

		VALUE Move_POI_72_POI_68() [2, 4]
		MEETS {
			Visit_POI_68();
		}

		VALUE Move_POI_72_POI_79() [1, 1]
		MEETS {
			Visit_POI_79();
		}

		VALUE Move_POI_72_POI_67() [2, 2]
		MEETS {
			Visit_POI_67();
		}

		VALUE Move_POI_72_POI_78() [2, 4]
		MEETS {
			Visit_POI_78();
		}

		VALUE Move_POI_72_POI_66() [2, 4]
		MEETS {
			Visit_POI_66();
		}

		VALUE Move_POI_72_POI_77() [5, 7]
		MEETS {
			Visit_POI_77();
		}

		VALUE Move_POI_72_POI_65() [5, 7]
		MEETS {
			Visit_POI_65();
		}

		VALUE Move_POI_72_POI_76() [1, 1]
		MEETS {
			Visit_POI_76();
		}

		VALUE Move_POI_72_POI_64() [1, 1]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_POI_72_POI_75() [1, 1]
		MEETS {
			Visit_POI_75();
		}

		VALUE Move_POI_72_POI_74() [2, 4]
		MEETS {
			Visit_POI_74();
		}

		VALUE Move_POI_72_POI_73() [6, 10]
		MEETS {
			Visit_POI_73();
		}

		VALUE Move_POI_72_POI_83() [4, 6]
		MEETS {
			Visit_POI_83();
		}

		VALUE Move_POI_72_POI_71() [1, 1]
		MEETS {
			Visit_POI_71();
		}

		VALUE Move_POI_72_POI_82() [6, 10]
		MEETS {
			Visit_POI_82();
		}

		VALUE Move_POI_72_POI_70() [6, 10]
		MEETS {
			Visit_POI_70();
		}

		VALUE Move_POI_72_POI_81() [6, 10]
		MEETS {
			Visit_POI_81();
		}

		VALUE Move_POI_72_POI_80() [4, 6]
		MEETS {
			Visit_POI_80();
		}

		VALUE Visit_POI_83() [8, 12]
		MEETS {
			Move_POI_83_POI_69();
			Move_POI_83_POI_68();
			Move_POI_83_POI_79();
			Move_POI_83_POI_67();
			Move_POI_83_POI_78();
			Move_POI_83_POI_66();
			Move_POI_83_POI_77();
			Move_POI_83_POI_65();
			Move_POI_83_POI_76();
			Move_POI_83_POI_64();
			Move_POI_83_POI_75();
			Move_POI_83_POI_74();
			Move_POI_83_POI_73();
			Move_POI_83_POI_72();
			Move_POI_83_POI_71();
			Move_POI_83_POI_82();
			Move_POI_83_POI_70();
			Move_POI_83_POI_81();
			Move_POI_83_POI_80();
			Finish();
		}

		VALUE Move_POI_83_POI_69() [2, 4]
		MEETS {
			Visit_POI_69();
		}

		VALUE Move_POI_83_POI_68() [4, 6]
		MEETS {
			Visit_POI_68();
		}

		VALUE Move_POI_83_POI_79() [5, 7]
		MEETS {
			Visit_POI_79();
		}

		VALUE Move_POI_83_POI_67() [6, 10]
		MEETS {
			Visit_POI_67();
		}

		VALUE Move_POI_83_POI_78() [6, 10]
		MEETS {
			Visit_POI_78();
		}

		VALUE Move_POI_83_POI_66() [1, 1]
		MEETS {
			Visit_POI_66();
		}

		VALUE Move_POI_83_POI_77() [3, 5]
		MEETS {
			Visit_POI_77();
		}

		VALUE Move_POI_83_POI_65() [2, 2]
		MEETS {
			Visit_POI_65();
		}

		VALUE Move_POI_83_POI_76() [4, 6]
		MEETS {
			Visit_POI_76();
		}

		VALUE Move_POI_83_POI_64() [5, 7]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_POI_83_POI_75() [5, 7]
		MEETS {
			Visit_POI_75();
		}

		VALUE Move_POI_83_POI_74() [2, 4]
		MEETS {
			Visit_POI_74();
		}

		VALUE Move_POI_83_POI_73() [2, 2]
		MEETS {
			Visit_POI_73();
		}

		VALUE Move_POI_83_POI_72() [1, 1]
		MEETS {
			Visit_POI_72();
		}

		VALUE Move_POI_83_POI_71() [6, 8]
		MEETS {
			Visit_POI_71();
		}

		VALUE Move_POI_83_POI_82() [4, 6]
		MEETS {
			Visit_POI_82();
		}

		VALUE Move_POI_83_POI_70() [1, 1]
		MEETS {
			Visit_POI_70();
		}

		VALUE Move_POI_83_POI_81() [4, 6]
		MEETS {
			Visit_POI_81();
		}

		VALUE Move_POI_83_POI_80() [2, 4]
		MEETS {
			Visit_POI_80();
		}

		VALUE Visit_POI_71() [24, 36]
		MEETS {
			Move_POI_71_POI_69();
			Move_POI_71_POI_68();
			Move_POI_71_POI_79();
			Move_POI_71_POI_67();
			Move_POI_71_POI_78();
			Move_POI_71_POI_66();
			Move_POI_71_POI_77();
			Move_POI_71_POI_65();
			Move_POI_71_POI_76();
			Move_POI_71_POI_64();
			Move_POI_71_POI_75();
			Move_POI_71_POI_74();
			Move_POI_71_POI_73();
			Move_POI_71_POI_72();
			Move_POI_71_POI_83();
			Move_POI_71_POI_82();
			Move_POI_71_POI_70();
			Move_POI_71_POI_81();
			Move_POI_71_POI_80();
			Finish();
		}

		VALUE Move_POI_71_POI_69() [6, 10]
		MEETS {
			Visit_POI_69();
		}

		VALUE Move_POI_71_POI_68() [7, 11]
		MEETS {
			Visit_POI_68();
		}

		VALUE Move_POI_71_POI_79() [2, 4]
		MEETS {
			Visit_POI_79();
		}

		VALUE Move_POI_71_POI_67() [6, 10]
		MEETS {
			Visit_POI_67();
		}

		VALUE Move_POI_71_POI_78() [2, 4]
		MEETS {
			Visit_POI_78();
		}

		VALUE Move_POI_71_POI_66() [4, 6]
		MEETS {
			Visit_POI_66();
		}

		VALUE Move_POI_71_POI_77() [2, 4]
		MEETS {
			Visit_POI_77();
		}

		VALUE Move_POI_71_POI_65() [2, 4]
		MEETS {
			Visit_POI_65();
		}

		VALUE Move_POI_71_POI_76() [4, 6]
		MEETS {
			Visit_POI_76();
		}

		VALUE Move_POI_71_POI_64() [2, 4]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_POI_71_POI_75() [2, 4]
		MEETS {
			Visit_POI_75();
		}

		VALUE Move_POI_71_POI_74() [2, 4]
		MEETS {
			Visit_POI_74();
		}

		VALUE Move_POI_71_POI_73() [7, 11]
		MEETS {
			Visit_POI_73();
		}

		VALUE Move_POI_71_POI_72() [5, 7]
		MEETS {
			Visit_POI_72();
		}

		VALUE Move_POI_71_POI_83() [7, 11]
		MEETS {
			Visit_POI_83();
		}

		VALUE Move_POI_71_POI_82() [6, 8]
		MEETS {
			Visit_POI_82();
		}

		VALUE Move_POI_71_POI_70() [4, 6]
		MEETS {
			Visit_POI_70();
		}

		VALUE Move_POI_71_POI_81() [6, 10]
		MEETS {
			Visit_POI_81();
		}

		VALUE Move_POI_71_POI_80() [6, 10]
		MEETS {
			Visit_POI_80();
		}

		VALUE Visit_POI_82() [24, 36]
		MEETS {
			Move_POI_82_POI_69();
			Move_POI_82_POI_68();
			Move_POI_82_POI_79();
			Move_POI_82_POI_67();
			Move_POI_82_POI_78();
			Move_POI_82_POI_66();
			Move_POI_82_POI_77();
			Move_POI_82_POI_65();
			Move_POI_82_POI_76();
			Move_POI_82_POI_64();
			Move_POI_82_POI_75();
			Move_POI_82_POI_74();
			Move_POI_82_POI_73();
			Move_POI_82_POI_72();
			Move_POI_82_POI_83();
			Move_POI_82_POI_71();
			Move_POI_82_POI_70();
			Move_POI_82_POI_81();
			Move_POI_82_POI_80();
			Finish();
		}

		VALUE Move_POI_82_POI_69() [7, 11]
		MEETS {
			Visit_POI_69();
		}

		VALUE Move_POI_82_POI_68() [3, 5]
		MEETS {
			Visit_POI_68();
		}

		VALUE Move_POI_82_POI_79() [4, 6]
		MEETS {
			Visit_POI_79();
		}

		VALUE Move_POI_82_POI_67() [2, 4]
		MEETS {
			Visit_POI_67();
		}

		VALUE Move_POI_82_POI_78() [7, 11]
		MEETS {
			Visit_POI_78();
		}

		VALUE Move_POI_82_POI_66() [6, 8]
		MEETS {
			Visit_POI_66();
		}

		VALUE Move_POI_82_POI_77() [2, 4]
		MEETS {
			Visit_POI_77();
		}

		VALUE Move_POI_82_POI_65() [2, 2]
		MEETS {
			Visit_POI_65();
		}

		VALUE Move_POI_82_POI_76() [1, 1]
		MEETS {
			Visit_POI_76();
		}

		VALUE Move_POI_82_POI_64() [4, 6]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_POI_82_POI_75() [2, 4]
		MEETS {
			Visit_POI_75();
		}

		VALUE Move_POI_82_POI_74() [7, 11]
		MEETS {
			Visit_POI_74();
		}

		VALUE Move_POI_82_POI_73() [1, 1]
		MEETS {
			Visit_POI_73();
		}

		VALUE Move_POI_82_POI_72() [2, 2]
		MEETS {
			Visit_POI_72();
		}

		VALUE Move_POI_82_POI_83() [5, 7]
		MEETS {
			Visit_POI_83();
		}

		VALUE Move_POI_82_POI_71() [4, 6]
		MEETS {
			Visit_POI_71();
		}

		VALUE Move_POI_82_POI_70() [2, 2]
		MEETS {
			Visit_POI_70();
		}

		VALUE Move_POI_82_POI_81() [6, 8]
		MEETS {
			Visit_POI_81();
		}

		VALUE Move_POI_82_POI_80() [6, 8]
		MEETS {
			Visit_POI_80();
		}

		VALUE Visit_POI_70() [8, 12]
		MEETS {
			Move_POI_70_POI_69();
			Move_POI_70_POI_68();
			Move_POI_70_POI_79();
			Move_POI_70_POI_67();
			Move_POI_70_POI_78();
			Move_POI_70_POI_66();
			Move_POI_70_POI_77();
			Move_POI_70_POI_65();
			Move_POI_70_POI_76();
			Move_POI_70_POI_64();
			Move_POI_70_POI_75();
			Move_POI_70_POI_74();
			Move_POI_70_POI_73();
			Move_POI_70_POI_72();
			Move_POI_70_POI_83();
			Move_POI_70_POI_71();
			Move_POI_70_POI_82();
			Move_POI_70_POI_81();
			Move_POI_70_POI_80();
			Finish();
		}

		VALUE Move_POI_70_POI_69() [4, 6]
		MEETS {
			Visit_POI_69();
		}

		VALUE Move_POI_70_POI_68() [2, 4]
		MEETS {
			Visit_POI_68();
		}

		VALUE Move_POI_70_POI_79() [3, 5]
		MEETS {
			Visit_POI_79();
		}

		VALUE Move_POI_70_POI_67() [6, 8]
		MEETS {
			Visit_POI_67();
		}

		VALUE Move_POI_70_POI_78() [2, 4]
		MEETS {
			Visit_POI_78();
		}

		VALUE Move_POI_70_POI_66() [3, 5]
		MEETS {
			Visit_POI_66();
		}

		VALUE Move_POI_70_POI_77() [6, 8]
		MEETS {
			Visit_POI_77();
		}

		VALUE Move_POI_70_POI_65() [5, 7]
		MEETS {
			Visit_POI_65();
		}

		VALUE Move_POI_70_POI_76() [4, 6]
		MEETS {
			Visit_POI_76();
		}

		VALUE Move_POI_70_POI_64() [1, 1]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_POI_70_POI_75() [5, 7]
		MEETS {
			Visit_POI_75();
		}

		VALUE Move_POI_70_POI_74() [4, 6]
		MEETS {
			Visit_POI_74();
		}

		VALUE Move_POI_70_POI_73() [2, 2]
		MEETS {
			Visit_POI_73();
		}

		VALUE Move_POI_70_POI_72() [6, 8]
		MEETS {
			Visit_POI_72();
		}

		VALUE Move_POI_70_POI_83() [2, 4]
		MEETS {
			Visit_POI_83();
		}

		VALUE Move_POI_70_POI_71() [6, 8]
		MEETS {
			Visit_POI_71();
		}

		VALUE Move_POI_70_POI_82() [2, 2]
		MEETS {
			Visit_POI_82();
		}

		VALUE Move_POI_70_POI_81() [3, 5]
		MEETS {
			Visit_POI_81();
		}

		VALUE Move_POI_70_POI_80() [6, 10]
		MEETS {
			Visit_POI_80();
		}

		VALUE Visit_POI_81() [24, 36]
		MEETS {
			Move_POI_81_POI_69();
			Move_POI_81_POI_68();
			Move_POI_81_POI_79();
			Move_POI_81_POI_67();
			Move_POI_81_POI_78();
			Move_POI_81_POI_66();
			Move_POI_81_POI_77();
			Move_POI_81_POI_65();
			Move_POI_81_POI_76();
			Move_POI_81_POI_64();
			Move_POI_81_POI_75();
			Move_POI_81_POI_74();
			Move_POI_81_POI_73();
			Move_POI_81_POI_72();
			Move_POI_81_POI_83();
			Move_POI_81_POI_71();
			Move_POI_81_POI_82();
			Move_POI_81_POI_70();
			Move_POI_81_POI_80();
			Finish();
		}

		VALUE Move_POI_81_POI_69() [4, 6]
		MEETS {
			Visit_POI_69();
		}

		VALUE Move_POI_81_POI_68() [2, 4]
		MEETS {
			Visit_POI_68();
		}

		VALUE Move_POI_81_POI_79() [5, 7]
		MEETS {
			Visit_POI_79();
		}

		VALUE Move_POI_81_POI_67() [3, 5]
		MEETS {
			Visit_POI_67();
		}

		VALUE Move_POI_81_POI_78() [3, 5]
		MEETS {
			Visit_POI_78();
		}

		VALUE Move_POI_81_POI_66() [6, 10]
		MEETS {
			Visit_POI_66();
		}

		VALUE Move_POI_81_POI_77() [2, 2]
		MEETS {
			Visit_POI_77();
		}

		VALUE Move_POI_81_POI_65() [7, 11]
		MEETS {
			Visit_POI_65();
		}

		VALUE Move_POI_81_POI_76() [6, 10]
		MEETS {
			Visit_POI_76();
		}

		VALUE Move_POI_81_POI_64() [6, 8]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_POI_81_POI_75() [1, 1]
		MEETS {
			Visit_POI_75();
		}

		VALUE Move_POI_81_POI_74() [3, 5]
		MEETS {
			Visit_POI_74();
		}

		VALUE Move_POI_81_POI_73() [2, 2]
		MEETS {
			Visit_POI_73();
		}

		VALUE Move_POI_81_POI_72() [6, 10]
		MEETS {
			Visit_POI_72();
		}

		VALUE Move_POI_81_POI_83() [6, 8]
		MEETS {
			Visit_POI_83();
		}

		VALUE Move_POI_81_POI_71() [1, 1]
		MEETS {
			Visit_POI_71();
		}

		VALUE Move_POI_81_POI_82() [4, 6]
		MEETS {
			Visit_POI_82();
		}

		VALUE Move_POI_81_POI_70() [1, 1]
		MEETS {
			Visit_POI_70();
		}

		VALUE Move_POI_81_POI_80() [2, 2]
		MEETS {
			Visit_POI_80();
		}

		VALUE Visit_POI_80() [12, 18]
		MEETS {
			Move_POI_80_POI_69();
			Move_POI_80_POI_68();
			Move_POI_80_POI_79();
			Move_POI_80_POI_67();
			Move_POI_80_POI_78();
			Move_POI_80_POI_66();
			Move_POI_80_POI_77();
			Move_POI_80_POI_65();
			Move_POI_80_POI_76();
			Move_POI_80_POI_64();
			Move_POI_80_POI_75();
			Move_POI_80_POI_74();
			Move_POI_80_POI_73();
			Move_POI_80_POI_72();
			Move_POI_80_POI_83();
			Move_POI_80_POI_71();
			Move_POI_80_POI_82();
			Move_POI_80_POI_70();
			Move_POI_80_POI_81();
			Finish();
		}

		VALUE Move_POI_80_POI_69() [4, 6]
		MEETS {
			Visit_POI_69();
		}

		VALUE Move_POI_80_POI_68() [1, 1]
		MEETS {
			Visit_POI_68();
		}

		VALUE Move_POI_80_POI_79() [7, 11]
		MEETS {
			Visit_POI_79();
		}

		VALUE Move_POI_80_POI_67() [2, 2]
		MEETS {
			Visit_POI_67();
		}

		VALUE Move_POI_80_POI_78() [1, 1]
		MEETS {
			Visit_POI_78();
		}

		VALUE Move_POI_80_POI_66() [7, 11]
		MEETS {
			Visit_POI_66();
		}

		VALUE Move_POI_80_POI_77() [6, 8]
		MEETS {
			Visit_POI_77();
		}

		VALUE Move_POI_80_POI_65() [6, 10]
		MEETS {
			Visit_POI_65();
		}

		VALUE Move_POI_80_POI_76() [4, 6]
		MEETS {
			Visit_POI_76();
		}

		VALUE Move_POI_80_POI_64() [1, 1]
		MEETS {
			Visit_POI_64();
		}

		VALUE Move_POI_80_POI_75() [3, 5]
		MEETS {
			Visit_POI_75();
		}

		VALUE Move_POI_80_POI_74() [7, 11]
		MEETS {
			Visit_POI_74();
		}

		VALUE Move_POI_80_POI_73() [6, 10]
		MEETS {
			Visit_POI_73();
		}

		VALUE Move_POI_80_POI_72() [6, 10]
		MEETS {
			Visit_POI_72();
		}

		VALUE Move_POI_80_POI_83() [6, 8]
		MEETS {
			Visit_POI_83();
		}

		VALUE Move_POI_80_POI_71() [7, 11]
		MEETS {
			Visit_POI_71();
		}

		VALUE Move_POI_80_POI_82() [5, 7]
		MEETS {
			Visit_POI_82();
		}

		VALUE Move_POI_80_POI_70() [3, 5]
		MEETS {
			Visit_POI_70();
		}

		VALUE Move_POI_80_POI_81() [3, 5]
		MEETS {
			Visit_POI_81();
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

			cd0 <!> TripPath.hops.Visit_POI_69();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_68();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_79();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_67();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_78();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_66();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_77();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_65();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_76();
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

			cd0 <!> TripPath.hops.Visit_POI_75();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_74();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_73();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_72();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_83();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_71();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_82();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_70();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_81();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_80();
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

