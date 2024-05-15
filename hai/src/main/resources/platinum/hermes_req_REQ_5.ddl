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
		 Visit_POI_89(), Move_Home_POI_89(), Move_POI_89_POI_88(), Move_POI_89_POI_99(), Move_POI_89_POI_87(), Move_POI_89_POI_98(), Move_POI_89_POI_86(), Move_POI_89_POI_97(), Move_POI_89_POI_101(), Move_POI_89_POI_85(), Move_POI_89_POI_96(), Move_POI_89_POI_100(), Move_POI_89_POI_84(), Move_POI_89_POI_95(), Move_POI_89_POI_103(), Move_POI_89_POI_94(), Move_POI_89_POI_102(), Move_POI_89_POI_93(), Move_POI_89_POI_92(), Move_POI_89_POI_91(), Move_POI_89_POI_90(), 
		 Visit_POI_88(), Move_Home_POI_88(), Move_POI_88_POI_89(), Move_POI_88_POI_99(), Move_POI_88_POI_87(), Move_POI_88_POI_98(), Move_POI_88_POI_86(), Move_POI_88_POI_97(), Move_POI_88_POI_101(), Move_POI_88_POI_85(), Move_POI_88_POI_96(), Move_POI_88_POI_100(), Move_POI_88_POI_84(), Move_POI_88_POI_95(), Move_POI_88_POI_103(), Move_POI_88_POI_94(), Move_POI_88_POI_102(), Move_POI_88_POI_93(), Move_POI_88_POI_92(), Move_POI_88_POI_91(), Move_POI_88_POI_90(), 
		 Visit_POI_99(), Move_Home_POI_99(), Move_POI_99_POI_89(), Move_POI_99_POI_88(), Move_POI_99_POI_87(), Move_POI_99_POI_98(), Move_POI_99_POI_86(), Move_POI_99_POI_97(), Move_POI_99_POI_101(), Move_POI_99_POI_85(), Move_POI_99_POI_96(), Move_POI_99_POI_100(), Move_POI_99_POI_84(), Move_POI_99_POI_95(), Move_POI_99_POI_103(), Move_POI_99_POI_94(), Move_POI_99_POI_102(), Move_POI_99_POI_93(), Move_POI_99_POI_92(), Move_POI_99_POI_91(), Move_POI_99_POI_90(), 
		 Visit_POI_87(), Move_Home_POI_87(), Move_POI_87_POI_89(), Move_POI_87_POI_88(), Move_POI_87_POI_99(), Move_POI_87_POI_98(), Move_POI_87_POI_86(), Move_POI_87_POI_97(), Move_POI_87_POI_101(), Move_POI_87_POI_85(), Move_POI_87_POI_96(), Move_POI_87_POI_100(), Move_POI_87_POI_84(), Move_POI_87_POI_95(), Move_POI_87_POI_103(), Move_POI_87_POI_94(), Move_POI_87_POI_102(), Move_POI_87_POI_93(), Move_POI_87_POI_92(), Move_POI_87_POI_91(), Move_POI_87_POI_90(), 
		 Visit_POI_98(), Move_Home_POI_98(), Move_POI_98_POI_89(), Move_POI_98_POI_88(), Move_POI_98_POI_99(), Move_POI_98_POI_87(), Move_POI_98_POI_86(), Move_POI_98_POI_97(), Move_POI_98_POI_101(), Move_POI_98_POI_85(), Move_POI_98_POI_96(), Move_POI_98_POI_100(), Move_POI_98_POI_84(), Move_POI_98_POI_95(), Move_POI_98_POI_103(), Move_POI_98_POI_94(), Move_POI_98_POI_102(), Move_POI_98_POI_93(), Move_POI_98_POI_92(), Move_POI_98_POI_91(), Move_POI_98_POI_90(), 
		 Visit_POI_86(), Move_Home_POI_86(), Move_POI_86_POI_89(), Move_POI_86_POI_88(), Move_POI_86_POI_99(), Move_POI_86_POI_87(), Move_POI_86_POI_98(), Move_POI_86_POI_97(), Move_POI_86_POI_101(), Move_POI_86_POI_85(), Move_POI_86_POI_96(), Move_POI_86_POI_100(), Move_POI_86_POI_84(), Move_POI_86_POI_95(), Move_POI_86_POI_103(), Move_POI_86_POI_94(), Move_POI_86_POI_102(), Move_POI_86_POI_93(), Move_POI_86_POI_92(), Move_POI_86_POI_91(), Move_POI_86_POI_90(), 
		 Visit_POI_97(), Move_Home_POI_97(), Move_POI_97_POI_89(), Move_POI_97_POI_88(), Move_POI_97_POI_99(), Move_POI_97_POI_87(), Move_POI_97_POI_98(), Move_POI_97_POI_86(), Move_POI_97_POI_101(), Move_POI_97_POI_85(), Move_POI_97_POI_96(), Move_POI_97_POI_100(), Move_POI_97_POI_84(), Move_POI_97_POI_95(), Move_POI_97_POI_103(), Move_POI_97_POI_94(), Move_POI_97_POI_102(), Move_POI_97_POI_93(), Move_POI_97_POI_92(), Move_POI_97_POI_91(), Move_POI_97_POI_90(), 
		 Visit_POI_101(), Move_Home_POI_101(), Move_POI_101_POI_89(), Move_POI_101_POI_88(), Move_POI_101_POI_99(), Move_POI_101_POI_87(), Move_POI_101_POI_98(), Move_POI_101_POI_86(), Move_POI_101_POI_97(), Move_POI_101_POI_85(), Move_POI_101_POI_96(), Move_POI_101_POI_100(), Move_POI_101_POI_84(), Move_POI_101_POI_95(), Move_POI_101_POI_103(), Move_POI_101_POI_94(), Move_POI_101_POI_102(), Move_POI_101_POI_93(), Move_POI_101_POI_92(), Move_POI_101_POI_91(), Move_POI_101_POI_90(), 
		 Visit_POI_85(), Move_Home_POI_85(), Move_POI_85_POI_89(), Move_POI_85_POI_88(), Move_POI_85_POI_99(), Move_POI_85_POI_87(), Move_POI_85_POI_98(), Move_POI_85_POI_86(), Move_POI_85_POI_97(), Move_POI_85_POI_101(), Move_POI_85_POI_96(), Move_POI_85_POI_100(), Move_POI_85_POI_84(), Move_POI_85_POI_95(), Move_POI_85_POI_103(), Move_POI_85_POI_94(), Move_POI_85_POI_102(), Move_POI_85_POI_93(), Move_POI_85_POI_92(), Move_POI_85_POI_91(), Move_POI_85_POI_90(), 
		 Visit_POI_96(), Move_Home_POI_96(), Move_POI_96_POI_89(), Move_POI_96_POI_88(), Move_POI_96_POI_99(), Move_POI_96_POI_87(), Move_POI_96_POI_98(), Move_POI_96_POI_86(), Move_POI_96_POI_97(), Move_POI_96_POI_101(), Move_POI_96_POI_85(), Move_POI_96_POI_100(), Move_POI_96_POI_84(), Move_POI_96_POI_95(), Move_POI_96_POI_103(), Move_POI_96_POI_94(), Move_POI_96_POI_102(), Move_POI_96_POI_93(), Move_POI_96_POI_92(), Move_POI_96_POI_91(), Move_POI_96_POI_90(), 
		 Visit_POI_100(), Move_Home_POI_100(), Move_POI_100_POI_89(), Move_POI_100_POI_88(), Move_POI_100_POI_99(), Move_POI_100_POI_87(), Move_POI_100_POI_98(), Move_POI_100_POI_86(), Move_POI_100_POI_97(), Move_POI_100_POI_101(), Move_POI_100_POI_85(), Move_POI_100_POI_96(), Move_POI_100_POI_84(), Move_POI_100_POI_95(), Move_POI_100_POI_103(), Move_POI_100_POI_94(), Move_POI_100_POI_102(), Move_POI_100_POI_93(), Move_POI_100_POI_92(), Move_POI_100_POI_91(), Move_POI_100_POI_90(), 
		 Visit_POI_84(), Move_Home_POI_84(), Move_POI_84_POI_89(), Move_POI_84_POI_88(), Move_POI_84_POI_99(), Move_POI_84_POI_87(), Move_POI_84_POI_98(), Move_POI_84_POI_86(), Move_POI_84_POI_97(), Move_POI_84_POI_101(), Move_POI_84_POI_85(), Move_POI_84_POI_96(), Move_POI_84_POI_100(), Move_POI_84_POI_95(), Move_POI_84_POI_103(), Move_POI_84_POI_94(), Move_POI_84_POI_102(), Move_POI_84_POI_93(), Move_POI_84_POI_92(), Move_POI_84_POI_91(), Move_POI_84_POI_90(), 
		 Visit_POI_95(), Move_Home_POI_95(), Move_POI_95_POI_89(), Move_POI_95_POI_88(), Move_POI_95_POI_99(), Move_POI_95_POI_87(), Move_POI_95_POI_98(), Move_POI_95_POI_86(), Move_POI_95_POI_97(), Move_POI_95_POI_101(), Move_POI_95_POI_85(), Move_POI_95_POI_96(), Move_POI_95_POI_100(), Move_POI_95_POI_84(), Move_POI_95_POI_103(), Move_POI_95_POI_94(), Move_POI_95_POI_102(), Move_POI_95_POI_93(), Move_POI_95_POI_92(), Move_POI_95_POI_91(), Move_POI_95_POI_90(), 
		 Visit_POI_103(), Move_Home_POI_103(), Move_POI_103_POI_89(), Move_POI_103_POI_88(), Move_POI_103_POI_99(), Move_POI_103_POI_87(), Move_POI_103_POI_98(), Move_POI_103_POI_86(), Move_POI_103_POI_97(), Move_POI_103_POI_101(), Move_POI_103_POI_85(), Move_POI_103_POI_96(), Move_POI_103_POI_100(), Move_POI_103_POI_84(), Move_POI_103_POI_95(), Move_POI_103_POI_94(), Move_POI_103_POI_102(), Move_POI_103_POI_93(), Move_POI_103_POI_92(), Move_POI_103_POI_91(), Move_POI_103_POI_90(), 
		 Visit_POI_94(), Move_Home_POI_94(), Move_POI_94_POI_89(), Move_POI_94_POI_88(), Move_POI_94_POI_99(), Move_POI_94_POI_87(), Move_POI_94_POI_98(), Move_POI_94_POI_86(), Move_POI_94_POI_97(), Move_POI_94_POI_101(), Move_POI_94_POI_85(), Move_POI_94_POI_96(), Move_POI_94_POI_100(), Move_POI_94_POI_84(), Move_POI_94_POI_95(), Move_POI_94_POI_103(), Move_POI_94_POI_102(), Move_POI_94_POI_93(), Move_POI_94_POI_92(), Move_POI_94_POI_91(), Move_POI_94_POI_90(), 
		 Visit_POI_102(), Move_Home_POI_102(), Move_POI_102_POI_89(), Move_POI_102_POI_88(), Move_POI_102_POI_99(), Move_POI_102_POI_87(), Move_POI_102_POI_98(), Move_POI_102_POI_86(), Move_POI_102_POI_97(), Move_POI_102_POI_101(), Move_POI_102_POI_85(), Move_POI_102_POI_96(), Move_POI_102_POI_100(), Move_POI_102_POI_84(), Move_POI_102_POI_95(), Move_POI_102_POI_103(), Move_POI_102_POI_94(), Move_POI_102_POI_93(), Move_POI_102_POI_92(), Move_POI_102_POI_91(), Move_POI_102_POI_90(), 
		 Visit_POI_93(), Move_Home_POI_93(), Move_POI_93_POI_89(), Move_POI_93_POI_88(), Move_POI_93_POI_99(), Move_POI_93_POI_87(), Move_POI_93_POI_98(), Move_POI_93_POI_86(), Move_POI_93_POI_97(), Move_POI_93_POI_101(), Move_POI_93_POI_85(), Move_POI_93_POI_96(), Move_POI_93_POI_100(), Move_POI_93_POI_84(), Move_POI_93_POI_95(), Move_POI_93_POI_103(), Move_POI_93_POI_94(), Move_POI_93_POI_102(), Move_POI_93_POI_92(), Move_POI_93_POI_91(), Move_POI_93_POI_90(), 
		 Visit_POI_92(), Move_Home_POI_92(), Move_POI_92_POI_89(), Move_POI_92_POI_88(), Move_POI_92_POI_99(), Move_POI_92_POI_87(), Move_POI_92_POI_98(), Move_POI_92_POI_86(), Move_POI_92_POI_97(), Move_POI_92_POI_101(), Move_POI_92_POI_85(), Move_POI_92_POI_96(), Move_POI_92_POI_100(), Move_POI_92_POI_84(), Move_POI_92_POI_95(), Move_POI_92_POI_103(), Move_POI_92_POI_94(), Move_POI_92_POI_102(), Move_POI_92_POI_93(), Move_POI_92_POI_91(), Move_POI_92_POI_90(), 
		 Visit_POI_91(), Move_Home_POI_91(), Move_POI_91_POI_89(), Move_POI_91_POI_88(), Move_POI_91_POI_99(), Move_POI_91_POI_87(), Move_POI_91_POI_98(), Move_POI_91_POI_86(), Move_POI_91_POI_97(), Move_POI_91_POI_101(), Move_POI_91_POI_85(), Move_POI_91_POI_96(), Move_POI_91_POI_100(), Move_POI_91_POI_84(), Move_POI_91_POI_95(), Move_POI_91_POI_103(), Move_POI_91_POI_94(), Move_POI_91_POI_102(), Move_POI_91_POI_93(), Move_POI_91_POI_92(), Move_POI_91_POI_90(), 
		 Visit_POI_90(), Move_Home_POI_90(), Move_POI_90_POI_89(), Move_POI_90_POI_88(), Move_POI_90_POI_99(), Move_POI_90_POI_87(), Move_POI_90_POI_98(), Move_POI_90_POI_86(), Move_POI_90_POI_97(), Move_POI_90_POI_101(), Move_POI_90_POI_85(), Move_POI_90_POI_96(), Move_POI_90_POI_100(), Move_POI_90_POI_84(), Move_POI_90_POI_95(), Move_POI_90_POI_103(), Move_POI_90_POI_94(), Move_POI_90_POI_102(), Move_POI_90_POI_93(), Move_POI_90_POI_92(), Move_POI_90_POI_91(), 
	) {

		VALUE Home() [1, 1]
		MEETS {
			Move_Home_POI_89();
			Move_Home_POI_88();
			Move_Home_POI_99();
			Move_Home_POI_87();
			Move_Home_POI_98();
			Move_Home_POI_86();
			Move_Home_POI_97();
			Move_Home_POI_101();
			Move_Home_POI_85();
			Move_Home_POI_96();
			Move_Home_POI_100();
			Move_Home_POI_84();
			Move_Home_POI_95();
			Move_Home_POI_103();
			Move_Home_POI_94();
			Move_Home_POI_102();
			Move_Home_POI_93();
			Move_Home_POI_92();
			Move_Home_POI_91();
			Move_Home_POI_90();
		}

		VALUE Finish() [1, +INF]
		MEETS {
			Home();
		}

		VALUE Move_Home_POI_89() [1, 1]
		MEETS {
			Visit_POI_89();
		}

		VALUE Move_Home_POI_88() [3, 5]
		MEETS {
			Visit_POI_88();
		}

		VALUE Move_Home_POI_99() [7, 11]
		MEETS {
			Visit_POI_99();
		}

		VALUE Move_Home_POI_87() [2, 4]
		MEETS {
			Visit_POI_87();
		}

		VALUE Move_Home_POI_98() [1, 1]
		MEETS {
			Visit_POI_98();
		}

		VALUE Move_Home_POI_86() [2, 4]
		MEETS {
			Visit_POI_86();
		}

		VALUE Move_Home_POI_97() [4, 6]
		MEETS {
			Visit_POI_97();
		}

		VALUE Move_Home_POI_101() [2, 2]
		MEETS {
			Visit_POI_101();
		}

		VALUE Move_Home_POI_85() [1, 1]
		MEETS {
			Visit_POI_85();
		}

		VALUE Move_Home_POI_96() [7, 11]
		MEETS {
			Visit_POI_96();
		}

		VALUE Move_Home_POI_100() [1, 1]
		MEETS {
			Visit_POI_100();
		}

		VALUE Move_Home_POI_84() [2, 2]
		MEETS {
			Visit_POI_84();
		}

		VALUE Move_Home_POI_95() [6, 8]
		MEETS {
			Visit_POI_95();
		}

		VALUE Move_Home_POI_103() [1, 1]
		MEETS {
			Visit_POI_103();
		}

		VALUE Move_Home_POI_94() [6, 10]
		MEETS {
			Visit_POI_94();
		}

		VALUE Move_Home_POI_102() [1, 1]
		MEETS {
			Visit_POI_102();
		}

		VALUE Move_Home_POI_93() [6, 10]
		MEETS {
			Visit_POI_93();
		}

		VALUE Move_Home_POI_92() [7, 11]
		MEETS {
			Visit_POI_92();
		}

		VALUE Move_Home_POI_91() [2, 4]
		MEETS {
			Visit_POI_91();
		}

		VALUE Move_Home_POI_90() [4, 6]
		MEETS {
			Visit_POI_90();
		}

		VALUE Visit_POI_89() [24, 36]
		MEETS {
			Move_POI_89_POI_88();
			Move_POI_89_POI_99();
			Move_POI_89_POI_87();
			Move_POI_89_POI_98();
			Move_POI_89_POI_86();
			Move_POI_89_POI_97();
			Move_POI_89_POI_101();
			Move_POI_89_POI_85();
			Move_POI_89_POI_96();
			Move_POI_89_POI_100();
			Move_POI_89_POI_84();
			Move_POI_89_POI_95();
			Move_POI_89_POI_103();
			Move_POI_89_POI_94();
			Move_POI_89_POI_102();
			Move_POI_89_POI_93();
			Move_POI_89_POI_92();
			Move_POI_89_POI_91();
			Move_POI_89_POI_90();
			Finish();
		}

		VALUE Move_POI_89_POI_88() [2, 4]
		MEETS {
			Visit_POI_88();
		}

		VALUE Move_POI_89_POI_99() [6, 10]
		MEETS {
			Visit_POI_99();
		}

		VALUE Move_POI_89_POI_87() [4, 6]
		MEETS {
			Visit_POI_87();
		}

		VALUE Move_POI_89_POI_98() [3, 5]
		MEETS {
			Visit_POI_98();
		}

		VALUE Move_POI_89_POI_86() [1, 1]
		MEETS {
			Visit_POI_86();
		}

		VALUE Move_POI_89_POI_97() [4, 6]
		MEETS {
			Visit_POI_97();
		}

		VALUE Move_POI_89_POI_101() [2, 4]
		MEETS {
			Visit_POI_101();
		}

		VALUE Move_POI_89_POI_85() [3, 5]
		MEETS {
			Visit_POI_85();
		}

		VALUE Move_POI_89_POI_96() [2, 4]
		MEETS {
			Visit_POI_96();
		}

		VALUE Move_POI_89_POI_100() [1, 1]
		MEETS {
			Visit_POI_100();
		}

		VALUE Move_POI_89_POI_84() [4, 6]
		MEETS {
			Visit_POI_84();
		}

		VALUE Move_POI_89_POI_95() [3, 5]
		MEETS {
			Visit_POI_95();
		}

		VALUE Move_POI_89_POI_103() [2, 4]
		MEETS {
			Visit_POI_103();
		}

		VALUE Move_POI_89_POI_94() [7, 11]
		MEETS {
			Visit_POI_94();
		}

		VALUE Move_POI_89_POI_102() [2, 4]
		MEETS {
			Visit_POI_102();
		}

		VALUE Move_POI_89_POI_93() [4, 6]
		MEETS {
			Visit_POI_93();
		}

		VALUE Move_POI_89_POI_92() [6, 10]
		MEETS {
			Visit_POI_92();
		}

		VALUE Move_POI_89_POI_91() [6, 8]
		MEETS {
			Visit_POI_91();
		}

		VALUE Move_POI_89_POI_90() [6, 10]
		MEETS {
			Visit_POI_90();
		}

		VALUE Visit_POI_88() [24, 36]
		MEETS {
			Move_POI_88_POI_89();
			Move_POI_88_POI_99();
			Move_POI_88_POI_87();
			Move_POI_88_POI_98();
			Move_POI_88_POI_86();
			Move_POI_88_POI_97();
			Move_POI_88_POI_101();
			Move_POI_88_POI_85();
			Move_POI_88_POI_96();
			Move_POI_88_POI_100();
			Move_POI_88_POI_84();
			Move_POI_88_POI_95();
			Move_POI_88_POI_103();
			Move_POI_88_POI_94();
			Move_POI_88_POI_102();
			Move_POI_88_POI_93();
			Move_POI_88_POI_92();
			Move_POI_88_POI_91();
			Move_POI_88_POI_90();
			Finish();
		}

		VALUE Move_POI_88_POI_89() [4, 6]
		MEETS {
			Visit_POI_89();
		}

		VALUE Move_POI_88_POI_99() [2, 2]
		MEETS {
			Visit_POI_99();
		}

		VALUE Move_POI_88_POI_87() [1, 1]
		MEETS {
			Visit_POI_87();
		}

		VALUE Move_POI_88_POI_98() [2, 2]
		MEETS {
			Visit_POI_98();
		}

		VALUE Move_POI_88_POI_86() [7, 11]
		MEETS {
			Visit_POI_86();
		}

		VALUE Move_POI_88_POI_97() [5, 7]
		MEETS {
			Visit_POI_97();
		}

		VALUE Move_POI_88_POI_101() [1, 1]
		MEETS {
			Visit_POI_101();
		}

		VALUE Move_POI_88_POI_85() [4, 6]
		MEETS {
			Visit_POI_85();
		}

		VALUE Move_POI_88_POI_96() [6, 10]
		MEETS {
			Visit_POI_96();
		}

		VALUE Move_POI_88_POI_100() [5, 7]
		MEETS {
			Visit_POI_100();
		}

		VALUE Move_POI_88_POI_84() [2, 4]
		MEETS {
			Visit_POI_84();
		}

		VALUE Move_POI_88_POI_95() [6, 8]
		MEETS {
			Visit_POI_95();
		}

		VALUE Move_POI_88_POI_103() [1, 1]
		MEETS {
			Visit_POI_103();
		}

		VALUE Move_POI_88_POI_94() [1, 1]
		MEETS {
			Visit_POI_94();
		}

		VALUE Move_POI_88_POI_102() [6, 10]
		MEETS {
			Visit_POI_102();
		}

		VALUE Move_POI_88_POI_93() [2, 4]
		MEETS {
			Visit_POI_93();
		}

		VALUE Move_POI_88_POI_92() [1, 1]
		MEETS {
			Visit_POI_92();
		}

		VALUE Move_POI_88_POI_91() [5, 7]
		MEETS {
			Visit_POI_91();
		}

		VALUE Move_POI_88_POI_90() [7, 11]
		MEETS {
			Visit_POI_90();
		}

		VALUE Visit_POI_99() [8, 12]
		MEETS {
			Move_POI_99_POI_89();
			Move_POI_99_POI_88();
			Move_POI_99_POI_87();
			Move_POI_99_POI_98();
			Move_POI_99_POI_86();
			Move_POI_99_POI_97();
			Move_POI_99_POI_101();
			Move_POI_99_POI_85();
			Move_POI_99_POI_96();
			Move_POI_99_POI_100();
			Move_POI_99_POI_84();
			Move_POI_99_POI_95();
			Move_POI_99_POI_103();
			Move_POI_99_POI_94();
			Move_POI_99_POI_102();
			Move_POI_99_POI_93();
			Move_POI_99_POI_92();
			Move_POI_99_POI_91();
			Move_POI_99_POI_90();
			Finish();
		}

		VALUE Move_POI_99_POI_89() [2, 4]
		MEETS {
			Visit_POI_89();
		}

		VALUE Move_POI_99_POI_88() [3, 5]
		MEETS {
			Visit_POI_88();
		}

		VALUE Move_POI_99_POI_87() [2, 2]
		MEETS {
			Visit_POI_87();
		}

		VALUE Move_POI_99_POI_98() [6, 8]
		MEETS {
			Visit_POI_98();
		}

		VALUE Move_POI_99_POI_86() [7, 11]
		MEETS {
			Visit_POI_86();
		}

		VALUE Move_POI_99_POI_97() [4, 6]
		MEETS {
			Visit_POI_97();
		}

		VALUE Move_POI_99_POI_101() [2, 4]
		MEETS {
			Visit_POI_101();
		}

		VALUE Move_POI_99_POI_85() [5, 7]
		MEETS {
			Visit_POI_85();
		}

		VALUE Move_POI_99_POI_96() [6, 8]
		MEETS {
			Visit_POI_96();
		}

		VALUE Move_POI_99_POI_100() [1, 1]
		MEETS {
			Visit_POI_100();
		}

		VALUE Move_POI_99_POI_84() [1, 1]
		MEETS {
			Visit_POI_84();
		}

		VALUE Move_POI_99_POI_95() [6, 10]
		MEETS {
			Visit_POI_95();
		}

		VALUE Move_POI_99_POI_103() [3, 5]
		MEETS {
			Visit_POI_103();
		}

		VALUE Move_POI_99_POI_94() [1, 1]
		MEETS {
			Visit_POI_94();
		}

		VALUE Move_POI_99_POI_102() [7, 11]
		MEETS {
			Visit_POI_102();
		}

		VALUE Move_POI_99_POI_93() [2, 2]
		MEETS {
			Visit_POI_93();
		}

		VALUE Move_POI_99_POI_92() [2, 4]
		MEETS {
			Visit_POI_92();
		}

		VALUE Move_POI_99_POI_91() [7, 11]
		MEETS {
			Visit_POI_91();
		}

		VALUE Move_POI_99_POI_90() [4, 6]
		MEETS {
			Visit_POI_90();
		}

		VALUE Visit_POI_87() [24, 36]
		MEETS {
			Move_POI_87_POI_89();
			Move_POI_87_POI_88();
			Move_POI_87_POI_99();
			Move_POI_87_POI_98();
			Move_POI_87_POI_86();
			Move_POI_87_POI_97();
			Move_POI_87_POI_101();
			Move_POI_87_POI_85();
			Move_POI_87_POI_96();
			Move_POI_87_POI_100();
			Move_POI_87_POI_84();
			Move_POI_87_POI_95();
			Move_POI_87_POI_103();
			Move_POI_87_POI_94();
			Move_POI_87_POI_102();
			Move_POI_87_POI_93();
			Move_POI_87_POI_92();
			Move_POI_87_POI_91();
			Move_POI_87_POI_90();
			Finish();
		}

		VALUE Move_POI_87_POI_89() [7, 11]
		MEETS {
			Visit_POI_89();
		}

		VALUE Move_POI_87_POI_88() [2, 2]
		MEETS {
			Visit_POI_88();
		}

		VALUE Move_POI_87_POI_99() [3, 5]
		MEETS {
			Visit_POI_99();
		}

		VALUE Move_POI_87_POI_98() [2, 4]
		MEETS {
			Visit_POI_98();
		}

		VALUE Move_POI_87_POI_86() [7, 11]
		MEETS {
			Visit_POI_86();
		}

		VALUE Move_POI_87_POI_97() [6, 8]
		MEETS {
			Visit_POI_97();
		}

		VALUE Move_POI_87_POI_101() [7, 11]
		MEETS {
			Visit_POI_101();
		}

		VALUE Move_POI_87_POI_85() [2, 2]
		MEETS {
			Visit_POI_85();
		}

		VALUE Move_POI_87_POI_96() [6, 8]
		MEETS {
			Visit_POI_96();
		}

		VALUE Move_POI_87_POI_100() [2, 4]
		MEETS {
			Visit_POI_100();
		}

		VALUE Move_POI_87_POI_84() [4, 6]
		MEETS {
			Visit_POI_84();
		}

		VALUE Move_POI_87_POI_95() [5, 7]
		MEETS {
			Visit_POI_95();
		}

		VALUE Move_POI_87_POI_103() [2, 4]
		MEETS {
			Visit_POI_103();
		}

		VALUE Move_POI_87_POI_94() [6, 10]
		MEETS {
			Visit_POI_94();
		}

		VALUE Move_POI_87_POI_102() [5, 7]
		MEETS {
			Visit_POI_102();
		}

		VALUE Move_POI_87_POI_93() [6, 10]
		MEETS {
			Visit_POI_93();
		}

		VALUE Move_POI_87_POI_92() [6, 10]
		MEETS {
			Visit_POI_92();
		}

		VALUE Move_POI_87_POI_91() [6, 8]
		MEETS {
			Visit_POI_91();
		}

		VALUE Move_POI_87_POI_90() [4, 6]
		MEETS {
			Visit_POI_90();
		}

		VALUE Visit_POI_98() [8, 12]
		MEETS {
			Move_POI_98_POI_89();
			Move_POI_98_POI_88();
			Move_POI_98_POI_99();
			Move_POI_98_POI_87();
			Move_POI_98_POI_86();
			Move_POI_98_POI_97();
			Move_POI_98_POI_101();
			Move_POI_98_POI_85();
			Move_POI_98_POI_96();
			Move_POI_98_POI_100();
			Move_POI_98_POI_84();
			Move_POI_98_POI_95();
			Move_POI_98_POI_103();
			Move_POI_98_POI_94();
			Move_POI_98_POI_102();
			Move_POI_98_POI_93();
			Move_POI_98_POI_92();
			Move_POI_98_POI_91();
			Move_POI_98_POI_90();
			Finish();
		}

		VALUE Move_POI_98_POI_89() [1, 1]
		MEETS {
			Visit_POI_89();
		}

		VALUE Move_POI_98_POI_88() [2, 2]
		MEETS {
			Visit_POI_88();
		}

		VALUE Move_POI_98_POI_99() [2, 4]
		MEETS {
			Visit_POI_99();
		}

		VALUE Move_POI_98_POI_87() [7, 11]
		MEETS {
			Visit_POI_87();
		}

		VALUE Move_POI_98_POI_86() [7, 11]
		MEETS {
			Visit_POI_86();
		}

		VALUE Move_POI_98_POI_97() [7, 11]
		MEETS {
			Visit_POI_97();
		}

		VALUE Move_POI_98_POI_101() [6, 8]
		MEETS {
			Visit_POI_101();
		}

		VALUE Move_POI_98_POI_85() [4, 6]
		MEETS {
			Visit_POI_85();
		}

		VALUE Move_POI_98_POI_96() [4, 6]
		MEETS {
			Visit_POI_96();
		}

		VALUE Move_POI_98_POI_100() [6, 8]
		MEETS {
			Visit_POI_100();
		}

		VALUE Move_POI_98_POI_84() [1, 1]
		MEETS {
			Visit_POI_84();
		}

		VALUE Move_POI_98_POI_95() [1, 1]
		MEETS {
			Visit_POI_95();
		}

		VALUE Move_POI_98_POI_103() [3, 5]
		MEETS {
			Visit_POI_103();
		}

		VALUE Move_POI_98_POI_94() [3, 5]
		MEETS {
			Visit_POI_94();
		}

		VALUE Move_POI_98_POI_102() [5, 7]
		MEETS {
			Visit_POI_102();
		}

		VALUE Move_POI_98_POI_93() [5, 7]
		MEETS {
			Visit_POI_93();
		}

		VALUE Move_POI_98_POI_92() [2, 4]
		MEETS {
			Visit_POI_92();
		}

		VALUE Move_POI_98_POI_91() [7, 11]
		MEETS {
			Visit_POI_91();
		}

		VALUE Move_POI_98_POI_90() [2, 2]
		MEETS {
			Visit_POI_90();
		}

		VALUE Visit_POI_86() [8, 12]
		MEETS {
			Move_POI_86_POI_89();
			Move_POI_86_POI_88();
			Move_POI_86_POI_99();
			Move_POI_86_POI_87();
			Move_POI_86_POI_98();
			Move_POI_86_POI_97();
			Move_POI_86_POI_101();
			Move_POI_86_POI_85();
			Move_POI_86_POI_96();
			Move_POI_86_POI_100();
			Move_POI_86_POI_84();
			Move_POI_86_POI_95();
			Move_POI_86_POI_103();
			Move_POI_86_POI_94();
			Move_POI_86_POI_102();
			Move_POI_86_POI_93();
			Move_POI_86_POI_92();
			Move_POI_86_POI_91();
			Move_POI_86_POI_90();
			Finish();
		}

		VALUE Move_POI_86_POI_89() [1, 1]
		MEETS {
			Visit_POI_89();
		}

		VALUE Move_POI_86_POI_88() [7, 11]
		MEETS {
			Visit_POI_88();
		}

		VALUE Move_POI_86_POI_99() [1, 1]
		MEETS {
			Visit_POI_99();
		}

		VALUE Move_POI_86_POI_87() [6, 8]
		MEETS {
			Visit_POI_87();
		}

		VALUE Move_POI_86_POI_98() [4, 6]
		MEETS {
			Visit_POI_98();
		}

		VALUE Move_POI_86_POI_97() [7, 11]
		MEETS {
			Visit_POI_97();
		}

		VALUE Move_POI_86_POI_101() [6, 8]
		MEETS {
			Visit_POI_101();
		}

		VALUE Move_POI_86_POI_85() [2, 4]
		MEETS {
			Visit_POI_85();
		}

		VALUE Move_POI_86_POI_96() [7, 11]
		MEETS {
			Visit_POI_96();
		}

		VALUE Move_POI_86_POI_100() [7, 11]
		MEETS {
			Visit_POI_100();
		}

		VALUE Move_POI_86_POI_84() [6, 10]
		MEETS {
			Visit_POI_84();
		}

		VALUE Move_POI_86_POI_95() [6, 8]
		MEETS {
			Visit_POI_95();
		}

		VALUE Move_POI_86_POI_103() [5, 7]
		MEETS {
			Visit_POI_103();
		}

		VALUE Move_POI_86_POI_94() [5, 7]
		MEETS {
			Visit_POI_94();
		}

		VALUE Move_POI_86_POI_102() [1, 1]
		MEETS {
			Visit_POI_102();
		}

		VALUE Move_POI_86_POI_93() [6, 10]
		MEETS {
			Visit_POI_93();
		}

		VALUE Move_POI_86_POI_92() [2, 2]
		MEETS {
			Visit_POI_92();
		}

		VALUE Move_POI_86_POI_91() [2, 4]
		MEETS {
			Visit_POI_91();
		}

		VALUE Move_POI_86_POI_90() [1, 1]
		MEETS {
			Visit_POI_90();
		}

		VALUE Visit_POI_97() [24, 36]
		MEETS {
			Move_POI_97_POI_89();
			Move_POI_97_POI_88();
			Move_POI_97_POI_99();
			Move_POI_97_POI_87();
			Move_POI_97_POI_98();
			Move_POI_97_POI_86();
			Move_POI_97_POI_101();
			Move_POI_97_POI_85();
			Move_POI_97_POI_96();
			Move_POI_97_POI_100();
			Move_POI_97_POI_84();
			Move_POI_97_POI_95();
			Move_POI_97_POI_103();
			Move_POI_97_POI_94();
			Move_POI_97_POI_102();
			Move_POI_97_POI_93();
			Move_POI_97_POI_92();
			Move_POI_97_POI_91();
			Move_POI_97_POI_90();
			Finish();
		}

		VALUE Move_POI_97_POI_89() [7, 11]
		MEETS {
			Visit_POI_89();
		}

		VALUE Move_POI_97_POI_88() [1, 1]
		MEETS {
			Visit_POI_88();
		}

		VALUE Move_POI_97_POI_99() [2, 4]
		MEETS {
			Visit_POI_99();
		}

		VALUE Move_POI_97_POI_87() [2, 4]
		MEETS {
			Visit_POI_87();
		}

		VALUE Move_POI_97_POI_98() [3, 5]
		MEETS {
			Visit_POI_98();
		}

		VALUE Move_POI_97_POI_86() [6, 8]
		MEETS {
			Visit_POI_86();
		}

		VALUE Move_POI_97_POI_101() [6, 10]
		MEETS {
			Visit_POI_101();
		}

		VALUE Move_POI_97_POI_85() [5, 7]
		MEETS {
			Visit_POI_85();
		}

		VALUE Move_POI_97_POI_96() [6, 8]
		MEETS {
			Visit_POI_96();
		}

		VALUE Move_POI_97_POI_100() [3, 5]
		MEETS {
			Visit_POI_100();
		}

		VALUE Move_POI_97_POI_84() [2, 4]
		MEETS {
			Visit_POI_84();
		}

		VALUE Move_POI_97_POI_95() [6, 10]
		MEETS {
			Visit_POI_95();
		}

		VALUE Move_POI_97_POI_103() [4, 6]
		MEETS {
			Visit_POI_103();
		}

		VALUE Move_POI_97_POI_94() [7, 11]
		MEETS {
			Visit_POI_94();
		}

		VALUE Move_POI_97_POI_102() [3, 5]
		MEETS {
			Visit_POI_102();
		}

		VALUE Move_POI_97_POI_93() [7, 11]
		MEETS {
			Visit_POI_93();
		}

		VALUE Move_POI_97_POI_92() [5, 7]
		MEETS {
			Visit_POI_92();
		}

		VALUE Move_POI_97_POI_91() [7, 11]
		MEETS {
			Visit_POI_91();
		}

		VALUE Move_POI_97_POI_90() [3, 5]
		MEETS {
			Visit_POI_90();
		}

		VALUE Visit_POI_101() [24, 36]
		MEETS {
			Move_POI_101_POI_89();
			Move_POI_101_POI_88();
			Move_POI_101_POI_99();
			Move_POI_101_POI_87();
			Move_POI_101_POI_98();
			Move_POI_101_POI_86();
			Move_POI_101_POI_97();
			Move_POI_101_POI_85();
			Move_POI_101_POI_96();
			Move_POI_101_POI_100();
			Move_POI_101_POI_84();
			Move_POI_101_POI_95();
			Move_POI_101_POI_103();
			Move_POI_101_POI_94();
			Move_POI_101_POI_102();
			Move_POI_101_POI_93();
			Move_POI_101_POI_92();
			Move_POI_101_POI_91();
			Move_POI_101_POI_90();
			Finish();
		}

		VALUE Move_POI_101_POI_89() [2, 2]
		MEETS {
			Visit_POI_89();
		}

		VALUE Move_POI_101_POI_88() [3, 5]
		MEETS {
			Visit_POI_88();
		}

		VALUE Move_POI_101_POI_99() [1, 1]
		MEETS {
			Visit_POI_99();
		}

		VALUE Move_POI_101_POI_87() [6, 8]
		MEETS {
			Visit_POI_87();
		}

		VALUE Move_POI_101_POI_98() [6, 8]
		MEETS {
			Visit_POI_98();
		}

		VALUE Move_POI_101_POI_86() [2, 4]
		MEETS {
			Visit_POI_86();
		}

		VALUE Move_POI_101_POI_97() [7, 11]
		MEETS {
			Visit_POI_97();
		}

		VALUE Move_POI_101_POI_85() [6, 10]
		MEETS {
			Visit_POI_85();
		}

		VALUE Move_POI_101_POI_96() [7, 11]
		MEETS {
			Visit_POI_96();
		}

		VALUE Move_POI_101_POI_100() [6, 8]
		MEETS {
			Visit_POI_100();
		}

		VALUE Move_POI_101_POI_84() [3, 5]
		MEETS {
			Visit_POI_84();
		}

		VALUE Move_POI_101_POI_95() [7, 11]
		MEETS {
			Visit_POI_95();
		}

		VALUE Move_POI_101_POI_103() [4, 6]
		MEETS {
			Visit_POI_103();
		}

		VALUE Move_POI_101_POI_94() [4, 6]
		MEETS {
			Visit_POI_94();
		}

		VALUE Move_POI_101_POI_102() [2, 4]
		MEETS {
			Visit_POI_102();
		}

		VALUE Move_POI_101_POI_93() [7, 11]
		MEETS {
			Visit_POI_93();
		}

		VALUE Move_POI_101_POI_92() [5, 7]
		MEETS {
			Visit_POI_92();
		}

		VALUE Move_POI_101_POI_91() [4, 6]
		MEETS {
			Visit_POI_91();
		}

		VALUE Move_POI_101_POI_90() [2, 2]
		MEETS {
			Visit_POI_90();
		}

		VALUE Visit_POI_85() [72, 108]
		MEETS {
			Move_POI_85_POI_89();
			Move_POI_85_POI_88();
			Move_POI_85_POI_99();
			Move_POI_85_POI_87();
			Move_POI_85_POI_98();
			Move_POI_85_POI_86();
			Move_POI_85_POI_97();
			Move_POI_85_POI_101();
			Move_POI_85_POI_96();
			Move_POI_85_POI_100();
			Move_POI_85_POI_84();
			Move_POI_85_POI_95();
			Move_POI_85_POI_103();
			Move_POI_85_POI_94();
			Move_POI_85_POI_102();
			Move_POI_85_POI_93();
			Move_POI_85_POI_92();
			Move_POI_85_POI_91();
			Move_POI_85_POI_90();
			Finish();
		}

		VALUE Move_POI_85_POI_89() [6, 8]
		MEETS {
			Visit_POI_89();
		}

		VALUE Move_POI_85_POI_88() [2, 4]
		MEETS {
			Visit_POI_88();
		}

		VALUE Move_POI_85_POI_99() [2, 4]
		MEETS {
			Visit_POI_99();
		}

		VALUE Move_POI_85_POI_87() [7, 11]
		MEETS {
			Visit_POI_87();
		}

		VALUE Move_POI_85_POI_98() [6, 10]
		MEETS {
			Visit_POI_98();
		}

		VALUE Move_POI_85_POI_86() [7, 11]
		MEETS {
			Visit_POI_86();
		}

		VALUE Move_POI_85_POI_97() [3, 5]
		MEETS {
			Visit_POI_97();
		}

		VALUE Move_POI_85_POI_101() [5, 7]
		MEETS {
			Visit_POI_101();
		}

		VALUE Move_POI_85_POI_96() [1, 1]
		MEETS {
			Visit_POI_96();
		}

		VALUE Move_POI_85_POI_100() [6, 10]
		MEETS {
			Visit_POI_100();
		}

		VALUE Move_POI_85_POI_84() [1, 1]
		MEETS {
			Visit_POI_84();
		}

		VALUE Move_POI_85_POI_95() [2, 2]
		MEETS {
			Visit_POI_95();
		}

		VALUE Move_POI_85_POI_103() [2, 4]
		MEETS {
			Visit_POI_103();
		}

		VALUE Move_POI_85_POI_94() [5, 7]
		MEETS {
			Visit_POI_94();
		}

		VALUE Move_POI_85_POI_102() [1, 1]
		MEETS {
			Visit_POI_102();
		}

		VALUE Move_POI_85_POI_93() [1, 1]
		MEETS {
			Visit_POI_93();
		}

		VALUE Move_POI_85_POI_92() [6, 8]
		MEETS {
			Visit_POI_92();
		}

		VALUE Move_POI_85_POI_91() [4, 6]
		MEETS {
			Visit_POI_91();
		}

		VALUE Move_POI_85_POI_90() [5, 7]
		MEETS {
			Visit_POI_90();
		}

		VALUE Visit_POI_96() [24, 36]
		MEETS {
			Move_POI_96_POI_89();
			Move_POI_96_POI_88();
			Move_POI_96_POI_99();
			Move_POI_96_POI_87();
			Move_POI_96_POI_98();
			Move_POI_96_POI_86();
			Move_POI_96_POI_97();
			Move_POI_96_POI_101();
			Move_POI_96_POI_85();
			Move_POI_96_POI_100();
			Move_POI_96_POI_84();
			Move_POI_96_POI_95();
			Move_POI_96_POI_103();
			Move_POI_96_POI_94();
			Move_POI_96_POI_102();
			Move_POI_96_POI_93();
			Move_POI_96_POI_92();
			Move_POI_96_POI_91();
			Move_POI_96_POI_90();
			Finish();
		}

		VALUE Move_POI_96_POI_89() [6, 8]
		MEETS {
			Visit_POI_89();
		}

		VALUE Move_POI_96_POI_88() [3, 5]
		MEETS {
			Visit_POI_88();
		}

		VALUE Move_POI_96_POI_99() [7, 11]
		MEETS {
			Visit_POI_99();
		}

		VALUE Move_POI_96_POI_87() [1, 1]
		MEETS {
			Visit_POI_87();
		}

		VALUE Move_POI_96_POI_98() [7, 11]
		MEETS {
			Visit_POI_98();
		}

		VALUE Move_POI_96_POI_86() [6, 10]
		MEETS {
			Visit_POI_86();
		}

		VALUE Move_POI_96_POI_97() [7, 11]
		MEETS {
			Visit_POI_97();
		}

		VALUE Move_POI_96_POI_101() [1, 1]
		MEETS {
			Visit_POI_101();
		}

		VALUE Move_POI_96_POI_85() [2, 4]
		MEETS {
			Visit_POI_85();
		}

		VALUE Move_POI_96_POI_100() [2, 4]
		MEETS {
			Visit_POI_100();
		}

		VALUE Move_POI_96_POI_84() [2, 2]
		MEETS {
			Visit_POI_84();
		}

		VALUE Move_POI_96_POI_95() [2, 2]
		MEETS {
			Visit_POI_95();
		}

		VALUE Move_POI_96_POI_103() [7, 11]
		MEETS {
			Visit_POI_103();
		}

		VALUE Move_POI_96_POI_94() [4, 6]
		MEETS {
			Visit_POI_94();
		}

		VALUE Move_POI_96_POI_102() [7, 11]
		MEETS {
			Visit_POI_102();
		}

		VALUE Move_POI_96_POI_93() [1, 1]
		MEETS {
			Visit_POI_93();
		}

		VALUE Move_POI_96_POI_92() [6, 8]
		MEETS {
			Visit_POI_92();
		}

		VALUE Move_POI_96_POI_91() [2, 2]
		MEETS {
			Visit_POI_91();
		}

		VALUE Move_POI_96_POI_90() [5, 7]
		MEETS {
			Visit_POI_90();
		}

		VALUE Visit_POI_100() [12, 18]
		MEETS {
			Move_POI_100_POI_89();
			Move_POI_100_POI_88();
			Move_POI_100_POI_99();
			Move_POI_100_POI_87();
			Move_POI_100_POI_98();
			Move_POI_100_POI_86();
			Move_POI_100_POI_97();
			Move_POI_100_POI_101();
			Move_POI_100_POI_85();
			Move_POI_100_POI_96();
			Move_POI_100_POI_84();
			Move_POI_100_POI_95();
			Move_POI_100_POI_103();
			Move_POI_100_POI_94();
			Move_POI_100_POI_102();
			Move_POI_100_POI_93();
			Move_POI_100_POI_92();
			Move_POI_100_POI_91();
			Move_POI_100_POI_90();
			Finish();
		}

		VALUE Move_POI_100_POI_89() [6, 8]
		MEETS {
			Visit_POI_89();
		}

		VALUE Move_POI_100_POI_88() [1, 1]
		MEETS {
			Visit_POI_88();
		}

		VALUE Move_POI_100_POI_99() [6, 8]
		MEETS {
			Visit_POI_99();
		}

		VALUE Move_POI_100_POI_87() [7, 11]
		MEETS {
			Visit_POI_87();
		}

		VALUE Move_POI_100_POI_98() [4, 6]
		MEETS {
			Visit_POI_98();
		}

		VALUE Move_POI_100_POI_86() [3, 5]
		MEETS {
			Visit_POI_86();
		}

		VALUE Move_POI_100_POI_97() [6, 8]
		MEETS {
			Visit_POI_97();
		}

		VALUE Move_POI_100_POI_101() [7, 11]
		MEETS {
			Visit_POI_101();
		}

		VALUE Move_POI_100_POI_85() [1, 1]
		MEETS {
			Visit_POI_85();
		}

		VALUE Move_POI_100_POI_96() [5, 7]
		MEETS {
			Visit_POI_96();
		}

		VALUE Move_POI_100_POI_84() [2, 4]
		MEETS {
			Visit_POI_84();
		}

		VALUE Move_POI_100_POI_95() [6, 8]
		MEETS {
			Visit_POI_95();
		}

		VALUE Move_POI_100_POI_103() [5, 7]
		MEETS {
			Visit_POI_103();
		}

		VALUE Move_POI_100_POI_94() [1, 1]
		MEETS {
			Visit_POI_94();
		}

		VALUE Move_POI_100_POI_102() [7, 11]
		MEETS {
			Visit_POI_102();
		}

		VALUE Move_POI_100_POI_93() [4, 6]
		MEETS {
			Visit_POI_93();
		}

		VALUE Move_POI_100_POI_92() [6, 8]
		MEETS {
			Visit_POI_92();
		}

		VALUE Move_POI_100_POI_91() [6, 10]
		MEETS {
			Visit_POI_91();
		}

		VALUE Move_POI_100_POI_90() [2, 2]
		MEETS {
			Visit_POI_90();
		}

		VALUE Visit_POI_84() [24, 36]
		MEETS {
			Move_POI_84_POI_89();
			Move_POI_84_POI_88();
			Move_POI_84_POI_99();
			Move_POI_84_POI_87();
			Move_POI_84_POI_98();
			Move_POI_84_POI_86();
			Move_POI_84_POI_97();
			Move_POI_84_POI_101();
			Move_POI_84_POI_85();
			Move_POI_84_POI_96();
			Move_POI_84_POI_100();
			Move_POI_84_POI_95();
			Move_POI_84_POI_103();
			Move_POI_84_POI_94();
			Move_POI_84_POI_102();
			Move_POI_84_POI_93();
			Move_POI_84_POI_92();
			Move_POI_84_POI_91();
			Move_POI_84_POI_90();
			Finish();
		}

		VALUE Move_POI_84_POI_89() [1, 1]
		MEETS {
			Visit_POI_89();
		}

		VALUE Move_POI_84_POI_88() [4, 6]
		MEETS {
			Visit_POI_88();
		}

		VALUE Move_POI_84_POI_99() [2, 2]
		MEETS {
			Visit_POI_99();
		}

		VALUE Move_POI_84_POI_87() [3, 5]
		MEETS {
			Visit_POI_87();
		}

		VALUE Move_POI_84_POI_98() [2, 4]
		MEETS {
			Visit_POI_98();
		}

		VALUE Move_POI_84_POI_86() [7, 11]
		MEETS {
			Visit_POI_86();
		}

		VALUE Move_POI_84_POI_97() [7, 11]
		MEETS {
			Visit_POI_97();
		}

		VALUE Move_POI_84_POI_101() [6, 8]
		MEETS {
			Visit_POI_101();
		}

		VALUE Move_POI_84_POI_85() [5, 7]
		MEETS {
			Visit_POI_85();
		}

		VALUE Move_POI_84_POI_96() [3, 5]
		MEETS {
			Visit_POI_96();
		}

		VALUE Move_POI_84_POI_100() [6, 10]
		MEETS {
			Visit_POI_100();
		}

		VALUE Move_POI_84_POI_95() [5, 7]
		MEETS {
			Visit_POI_95();
		}

		VALUE Move_POI_84_POI_103() [5, 7]
		MEETS {
			Visit_POI_103();
		}

		VALUE Move_POI_84_POI_94() [6, 10]
		MEETS {
			Visit_POI_94();
		}

		VALUE Move_POI_84_POI_102() [6, 10]
		MEETS {
			Visit_POI_102();
		}

		VALUE Move_POI_84_POI_93() [6, 8]
		MEETS {
			Visit_POI_93();
		}

		VALUE Move_POI_84_POI_92() [7, 11]
		MEETS {
			Visit_POI_92();
		}

		VALUE Move_POI_84_POI_91() [6, 10]
		MEETS {
			Visit_POI_91();
		}

		VALUE Move_POI_84_POI_90() [4, 6]
		MEETS {
			Visit_POI_90();
		}

		VALUE Visit_POI_95() [8, 12]
		MEETS {
			Move_POI_95_POI_89();
			Move_POI_95_POI_88();
			Move_POI_95_POI_99();
			Move_POI_95_POI_87();
			Move_POI_95_POI_98();
			Move_POI_95_POI_86();
			Move_POI_95_POI_97();
			Move_POI_95_POI_101();
			Move_POI_95_POI_85();
			Move_POI_95_POI_96();
			Move_POI_95_POI_100();
			Move_POI_95_POI_84();
			Move_POI_95_POI_103();
			Move_POI_95_POI_94();
			Move_POI_95_POI_102();
			Move_POI_95_POI_93();
			Move_POI_95_POI_92();
			Move_POI_95_POI_91();
			Move_POI_95_POI_90();
			Finish();
		}

		VALUE Move_POI_95_POI_89() [3, 5]
		MEETS {
			Visit_POI_89();
		}

		VALUE Move_POI_95_POI_88() [6, 8]
		MEETS {
			Visit_POI_88();
		}

		VALUE Move_POI_95_POI_99() [4, 6]
		MEETS {
			Visit_POI_99();
		}

		VALUE Move_POI_95_POI_87() [3, 5]
		MEETS {
			Visit_POI_87();
		}

		VALUE Move_POI_95_POI_98() [2, 2]
		MEETS {
			Visit_POI_98();
		}

		VALUE Move_POI_95_POI_86() [4, 6]
		MEETS {
			Visit_POI_86();
		}

		VALUE Move_POI_95_POI_97() [2, 4]
		MEETS {
			Visit_POI_97();
		}

		VALUE Move_POI_95_POI_101() [2, 2]
		MEETS {
			Visit_POI_101();
		}

		VALUE Move_POI_95_POI_85() [5, 7]
		MEETS {
			Visit_POI_85();
		}

		VALUE Move_POI_95_POI_96() [6, 10]
		MEETS {
			Visit_POI_96();
		}

		VALUE Move_POI_95_POI_100() [6, 8]
		MEETS {
			Visit_POI_100();
		}

		VALUE Move_POI_95_POI_84() [7, 11]
		MEETS {
			Visit_POI_84();
		}

		VALUE Move_POI_95_POI_103() [3, 5]
		MEETS {
			Visit_POI_103();
		}

		VALUE Move_POI_95_POI_94() [2, 2]
		MEETS {
			Visit_POI_94();
		}

		VALUE Move_POI_95_POI_102() [4, 6]
		MEETS {
			Visit_POI_102();
		}

		VALUE Move_POI_95_POI_93() [3, 5]
		MEETS {
			Visit_POI_93();
		}

		VALUE Move_POI_95_POI_92() [1, 1]
		MEETS {
			Visit_POI_92();
		}

		VALUE Move_POI_95_POI_91() [7, 11]
		MEETS {
			Visit_POI_91();
		}

		VALUE Move_POI_95_POI_90() [5, 7]
		MEETS {
			Visit_POI_90();
		}

		VALUE Visit_POI_103() [8, 12]
		MEETS {
			Move_POI_103_POI_89();
			Move_POI_103_POI_88();
			Move_POI_103_POI_99();
			Move_POI_103_POI_87();
			Move_POI_103_POI_98();
			Move_POI_103_POI_86();
			Move_POI_103_POI_97();
			Move_POI_103_POI_101();
			Move_POI_103_POI_85();
			Move_POI_103_POI_96();
			Move_POI_103_POI_100();
			Move_POI_103_POI_84();
			Move_POI_103_POI_95();
			Move_POI_103_POI_94();
			Move_POI_103_POI_102();
			Move_POI_103_POI_93();
			Move_POI_103_POI_92();
			Move_POI_103_POI_91();
			Move_POI_103_POI_90();
			Finish();
		}

		VALUE Move_POI_103_POI_89() [3, 5]
		MEETS {
			Visit_POI_89();
		}

		VALUE Move_POI_103_POI_88() [3, 5]
		MEETS {
			Visit_POI_88();
		}

		VALUE Move_POI_103_POI_99() [4, 6]
		MEETS {
			Visit_POI_99();
		}

		VALUE Move_POI_103_POI_87() [7, 11]
		MEETS {
			Visit_POI_87();
		}

		VALUE Move_POI_103_POI_98() [1, 1]
		MEETS {
			Visit_POI_98();
		}

		VALUE Move_POI_103_POI_86() [2, 2]
		MEETS {
			Visit_POI_86();
		}

		VALUE Move_POI_103_POI_97() [4, 6]
		MEETS {
			Visit_POI_97();
		}

		VALUE Move_POI_103_POI_101() [5, 7]
		MEETS {
			Visit_POI_101();
		}

		VALUE Move_POI_103_POI_85() [5, 7]
		MEETS {
			Visit_POI_85();
		}

		VALUE Move_POI_103_POI_96() [7, 11]
		MEETS {
			Visit_POI_96();
		}

		VALUE Move_POI_103_POI_100() [6, 10]
		MEETS {
			Visit_POI_100();
		}

		VALUE Move_POI_103_POI_84() [2, 4]
		MEETS {
			Visit_POI_84();
		}

		VALUE Move_POI_103_POI_95() [4, 6]
		MEETS {
			Visit_POI_95();
		}

		VALUE Move_POI_103_POI_94() [6, 10]
		MEETS {
			Visit_POI_94();
		}

		VALUE Move_POI_103_POI_102() [1, 1]
		MEETS {
			Visit_POI_102();
		}

		VALUE Move_POI_103_POI_93() [6, 8]
		MEETS {
			Visit_POI_93();
		}

		VALUE Move_POI_103_POI_92() [2, 2]
		MEETS {
			Visit_POI_92();
		}

		VALUE Move_POI_103_POI_91() [5, 7]
		MEETS {
			Visit_POI_91();
		}

		VALUE Move_POI_103_POI_90() [4, 6]
		MEETS {
			Visit_POI_90();
		}

		VALUE Visit_POI_94() [24, 36]
		MEETS {
			Move_POI_94_POI_89();
			Move_POI_94_POI_88();
			Move_POI_94_POI_99();
			Move_POI_94_POI_87();
			Move_POI_94_POI_98();
			Move_POI_94_POI_86();
			Move_POI_94_POI_97();
			Move_POI_94_POI_101();
			Move_POI_94_POI_85();
			Move_POI_94_POI_96();
			Move_POI_94_POI_100();
			Move_POI_94_POI_84();
			Move_POI_94_POI_95();
			Move_POI_94_POI_103();
			Move_POI_94_POI_102();
			Move_POI_94_POI_93();
			Move_POI_94_POI_92();
			Move_POI_94_POI_91();
			Move_POI_94_POI_90();
			Finish();
		}

		VALUE Move_POI_94_POI_89() [4, 6]
		MEETS {
			Visit_POI_89();
		}

		VALUE Move_POI_94_POI_88() [4, 6]
		MEETS {
			Visit_POI_88();
		}

		VALUE Move_POI_94_POI_99() [2, 4]
		MEETS {
			Visit_POI_99();
		}

		VALUE Move_POI_94_POI_87() [2, 4]
		MEETS {
			Visit_POI_87();
		}

		VALUE Move_POI_94_POI_98() [2, 2]
		MEETS {
			Visit_POI_98();
		}

		VALUE Move_POI_94_POI_86() [6, 10]
		MEETS {
			Visit_POI_86();
		}

		VALUE Move_POI_94_POI_97() [2, 2]
		MEETS {
			Visit_POI_97();
		}

		VALUE Move_POI_94_POI_101() [1, 1]
		MEETS {
			Visit_POI_101();
		}

		VALUE Move_POI_94_POI_85() [1, 1]
		MEETS {
			Visit_POI_85();
		}

		VALUE Move_POI_94_POI_96() [4, 6]
		MEETS {
			Visit_POI_96();
		}

		VALUE Move_POI_94_POI_100() [6, 8]
		MEETS {
			Visit_POI_100();
		}

		VALUE Move_POI_94_POI_84() [1, 1]
		MEETS {
			Visit_POI_84();
		}

		VALUE Move_POI_94_POI_95() [4, 6]
		MEETS {
			Visit_POI_95();
		}

		VALUE Move_POI_94_POI_103() [2, 4]
		MEETS {
			Visit_POI_103();
		}

		VALUE Move_POI_94_POI_102() [7, 11]
		MEETS {
			Visit_POI_102();
		}

		VALUE Move_POI_94_POI_93() [7, 11]
		MEETS {
			Visit_POI_93();
		}

		VALUE Move_POI_94_POI_92() [2, 2]
		MEETS {
			Visit_POI_92();
		}

		VALUE Move_POI_94_POI_91() [7, 11]
		MEETS {
			Visit_POI_91();
		}

		VALUE Move_POI_94_POI_90() [3, 5]
		MEETS {
			Visit_POI_90();
		}

		VALUE Visit_POI_102() [24, 36]
		MEETS {
			Move_POI_102_POI_89();
			Move_POI_102_POI_88();
			Move_POI_102_POI_99();
			Move_POI_102_POI_87();
			Move_POI_102_POI_98();
			Move_POI_102_POI_86();
			Move_POI_102_POI_97();
			Move_POI_102_POI_101();
			Move_POI_102_POI_85();
			Move_POI_102_POI_96();
			Move_POI_102_POI_100();
			Move_POI_102_POI_84();
			Move_POI_102_POI_95();
			Move_POI_102_POI_103();
			Move_POI_102_POI_94();
			Move_POI_102_POI_93();
			Move_POI_102_POI_92();
			Move_POI_102_POI_91();
			Move_POI_102_POI_90();
			Finish();
		}

		VALUE Move_POI_102_POI_89() [1, 1]
		MEETS {
			Visit_POI_89();
		}

		VALUE Move_POI_102_POI_88() [2, 2]
		MEETS {
			Visit_POI_88();
		}

		VALUE Move_POI_102_POI_99() [3, 5]
		MEETS {
			Visit_POI_99();
		}

		VALUE Move_POI_102_POI_87() [6, 8]
		MEETS {
			Visit_POI_87();
		}

		VALUE Move_POI_102_POI_98() [3, 5]
		MEETS {
			Visit_POI_98();
		}

		VALUE Move_POI_102_POI_86() [3, 5]
		MEETS {
			Visit_POI_86();
		}

		VALUE Move_POI_102_POI_97() [6, 8]
		MEETS {
			Visit_POI_97();
		}

		VALUE Move_POI_102_POI_101() [3, 5]
		MEETS {
			Visit_POI_101();
		}

		VALUE Move_POI_102_POI_85() [7, 11]
		MEETS {
			Visit_POI_85();
		}

		VALUE Move_POI_102_POI_96() [2, 2]
		MEETS {
			Visit_POI_96();
		}

		VALUE Move_POI_102_POI_100() [5, 7]
		MEETS {
			Visit_POI_100();
		}

		VALUE Move_POI_102_POI_84() [5, 7]
		MEETS {
			Visit_POI_84();
		}

		VALUE Move_POI_102_POI_95() [7, 11]
		MEETS {
			Visit_POI_95();
		}

		VALUE Move_POI_102_POI_103() [1, 1]
		MEETS {
			Visit_POI_103();
		}

		VALUE Move_POI_102_POI_94() [2, 2]
		MEETS {
			Visit_POI_94();
		}

		VALUE Move_POI_102_POI_93() [3, 5]
		MEETS {
			Visit_POI_93();
		}

		VALUE Move_POI_102_POI_92() [2, 4]
		MEETS {
			Visit_POI_92();
		}

		VALUE Move_POI_102_POI_91() [1, 1]
		MEETS {
			Visit_POI_91();
		}

		VALUE Move_POI_102_POI_90() [2, 2]
		MEETS {
			Visit_POI_90();
		}

		VALUE Visit_POI_93() [8, 12]
		MEETS {
			Move_POI_93_POI_89();
			Move_POI_93_POI_88();
			Move_POI_93_POI_99();
			Move_POI_93_POI_87();
			Move_POI_93_POI_98();
			Move_POI_93_POI_86();
			Move_POI_93_POI_97();
			Move_POI_93_POI_101();
			Move_POI_93_POI_85();
			Move_POI_93_POI_96();
			Move_POI_93_POI_100();
			Move_POI_93_POI_84();
			Move_POI_93_POI_95();
			Move_POI_93_POI_103();
			Move_POI_93_POI_94();
			Move_POI_93_POI_102();
			Move_POI_93_POI_92();
			Move_POI_93_POI_91();
			Move_POI_93_POI_90();
			Finish();
		}

		VALUE Move_POI_93_POI_89() [2, 4]
		MEETS {
			Visit_POI_89();
		}

		VALUE Move_POI_93_POI_88() [6, 10]
		MEETS {
			Visit_POI_88();
		}

		VALUE Move_POI_93_POI_99() [5, 7]
		MEETS {
			Visit_POI_99();
		}

		VALUE Move_POI_93_POI_87() [7, 11]
		MEETS {
			Visit_POI_87();
		}

		VALUE Move_POI_93_POI_98() [7, 11]
		MEETS {
			Visit_POI_98();
		}

		VALUE Move_POI_93_POI_86() [6, 10]
		MEETS {
			Visit_POI_86();
		}

		VALUE Move_POI_93_POI_97() [2, 4]
		MEETS {
			Visit_POI_97();
		}

		VALUE Move_POI_93_POI_101() [2, 2]
		MEETS {
			Visit_POI_101();
		}

		VALUE Move_POI_93_POI_85() [2, 4]
		MEETS {
			Visit_POI_85();
		}

		VALUE Move_POI_93_POI_96() [2, 4]
		MEETS {
			Visit_POI_96();
		}

		VALUE Move_POI_93_POI_100() [3, 5]
		MEETS {
			Visit_POI_100();
		}

		VALUE Move_POI_93_POI_84() [2, 4]
		MEETS {
			Visit_POI_84();
		}

		VALUE Move_POI_93_POI_95() [1, 1]
		MEETS {
			Visit_POI_95();
		}

		VALUE Move_POI_93_POI_103() [7, 11]
		MEETS {
			Visit_POI_103();
		}

		VALUE Move_POI_93_POI_94() [4, 6]
		MEETS {
			Visit_POI_94();
		}

		VALUE Move_POI_93_POI_102() [4, 6]
		MEETS {
			Visit_POI_102();
		}

		VALUE Move_POI_93_POI_92() [2, 2]
		MEETS {
			Visit_POI_92();
		}

		VALUE Move_POI_93_POI_91() [6, 8]
		MEETS {
			Visit_POI_91();
		}

		VALUE Move_POI_93_POI_90() [5, 7]
		MEETS {
			Visit_POI_90();
		}

		VALUE Visit_POI_92() [16, 24]
		MEETS {
			Move_POI_92_POI_89();
			Move_POI_92_POI_88();
			Move_POI_92_POI_99();
			Move_POI_92_POI_87();
			Move_POI_92_POI_98();
			Move_POI_92_POI_86();
			Move_POI_92_POI_97();
			Move_POI_92_POI_101();
			Move_POI_92_POI_85();
			Move_POI_92_POI_96();
			Move_POI_92_POI_100();
			Move_POI_92_POI_84();
			Move_POI_92_POI_95();
			Move_POI_92_POI_103();
			Move_POI_92_POI_94();
			Move_POI_92_POI_102();
			Move_POI_92_POI_93();
			Move_POI_92_POI_91();
			Move_POI_92_POI_90();
			Finish();
		}

		VALUE Move_POI_92_POI_89() [6, 8]
		MEETS {
			Visit_POI_89();
		}

		VALUE Move_POI_92_POI_88() [2, 2]
		MEETS {
			Visit_POI_88();
		}

		VALUE Move_POI_92_POI_99() [6, 8]
		MEETS {
			Visit_POI_99();
		}

		VALUE Move_POI_92_POI_87() [2, 4]
		MEETS {
			Visit_POI_87();
		}

		VALUE Move_POI_92_POI_98() [2, 4]
		MEETS {
			Visit_POI_98();
		}

		VALUE Move_POI_92_POI_86() [6, 10]
		MEETS {
			Visit_POI_86();
		}

		VALUE Move_POI_92_POI_97() [6, 10]
		MEETS {
			Visit_POI_97();
		}

		VALUE Move_POI_92_POI_101() [3, 5]
		MEETS {
			Visit_POI_101();
		}

		VALUE Move_POI_92_POI_85() [5, 7]
		MEETS {
			Visit_POI_85();
		}

		VALUE Move_POI_92_POI_96() [2, 4]
		MEETS {
			Visit_POI_96();
		}

		VALUE Move_POI_92_POI_100() [3, 5]
		MEETS {
			Visit_POI_100();
		}

		VALUE Move_POI_92_POI_84() [6, 8]
		MEETS {
			Visit_POI_84();
		}

		VALUE Move_POI_92_POI_95() [6, 8]
		MEETS {
			Visit_POI_95();
		}

		VALUE Move_POI_92_POI_103() [6, 10]
		MEETS {
			Visit_POI_103();
		}

		VALUE Move_POI_92_POI_94() [1, 1]
		MEETS {
			Visit_POI_94();
		}

		VALUE Move_POI_92_POI_102() [2, 2]
		MEETS {
			Visit_POI_102();
		}

		VALUE Move_POI_92_POI_93() [3, 5]
		MEETS {
			Visit_POI_93();
		}

		VALUE Move_POI_92_POI_91() [7, 11]
		MEETS {
			Visit_POI_91();
		}

		VALUE Move_POI_92_POI_90() [6, 8]
		MEETS {
			Visit_POI_90();
		}

		VALUE Visit_POI_91() [24, 36]
		MEETS {
			Move_POI_91_POI_89();
			Move_POI_91_POI_88();
			Move_POI_91_POI_99();
			Move_POI_91_POI_87();
			Move_POI_91_POI_98();
			Move_POI_91_POI_86();
			Move_POI_91_POI_97();
			Move_POI_91_POI_101();
			Move_POI_91_POI_85();
			Move_POI_91_POI_96();
			Move_POI_91_POI_100();
			Move_POI_91_POI_84();
			Move_POI_91_POI_95();
			Move_POI_91_POI_103();
			Move_POI_91_POI_94();
			Move_POI_91_POI_102();
			Move_POI_91_POI_93();
			Move_POI_91_POI_92();
			Move_POI_91_POI_90();
			Finish();
		}

		VALUE Move_POI_91_POI_89() [2, 2]
		MEETS {
			Visit_POI_89();
		}

		VALUE Move_POI_91_POI_88() [2, 2]
		MEETS {
			Visit_POI_88();
		}

		VALUE Move_POI_91_POI_99() [5, 7]
		MEETS {
			Visit_POI_99();
		}

		VALUE Move_POI_91_POI_87() [7, 11]
		MEETS {
			Visit_POI_87();
		}

		VALUE Move_POI_91_POI_98() [3, 5]
		MEETS {
			Visit_POI_98();
		}

		VALUE Move_POI_91_POI_86() [7, 11]
		MEETS {
			Visit_POI_86();
		}

		VALUE Move_POI_91_POI_97() [5, 7]
		MEETS {
			Visit_POI_97();
		}

		VALUE Move_POI_91_POI_101() [2, 4]
		MEETS {
			Visit_POI_101();
		}

		VALUE Move_POI_91_POI_85() [2, 2]
		MEETS {
			Visit_POI_85();
		}

		VALUE Move_POI_91_POI_96() [1, 1]
		MEETS {
			Visit_POI_96();
		}

		VALUE Move_POI_91_POI_100() [2, 4]
		MEETS {
			Visit_POI_100();
		}

		VALUE Move_POI_91_POI_84() [4, 6]
		MEETS {
			Visit_POI_84();
		}

		VALUE Move_POI_91_POI_95() [3, 5]
		MEETS {
			Visit_POI_95();
		}

		VALUE Move_POI_91_POI_103() [2, 2]
		MEETS {
			Visit_POI_103();
		}

		VALUE Move_POI_91_POI_94() [2, 4]
		MEETS {
			Visit_POI_94();
		}

		VALUE Move_POI_91_POI_102() [1, 1]
		MEETS {
			Visit_POI_102();
		}

		VALUE Move_POI_91_POI_93() [5, 7]
		MEETS {
			Visit_POI_93();
		}

		VALUE Move_POI_91_POI_92() [6, 8]
		MEETS {
			Visit_POI_92();
		}

		VALUE Move_POI_91_POI_90() [2, 2]
		MEETS {
			Visit_POI_90();
		}

		VALUE Visit_POI_90() [8, 12]
		MEETS {
			Move_POI_90_POI_89();
			Move_POI_90_POI_88();
			Move_POI_90_POI_99();
			Move_POI_90_POI_87();
			Move_POI_90_POI_98();
			Move_POI_90_POI_86();
			Move_POI_90_POI_97();
			Move_POI_90_POI_101();
			Move_POI_90_POI_85();
			Move_POI_90_POI_96();
			Move_POI_90_POI_100();
			Move_POI_90_POI_84();
			Move_POI_90_POI_95();
			Move_POI_90_POI_103();
			Move_POI_90_POI_94();
			Move_POI_90_POI_102();
			Move_POI_90_POI_93();
			Move_POI_90_POI_92();
			Move_POI_90_POI_91();
			Finish();
		}

		VALUE Move_POI_90_POI_89() [2, 2]
		MEETS {
			Visit_POI_89();
		}

		VALUE Move_POI_90_POI_88() [5, 7]
		MEETS {
			Visit_POI_88();
		}

		VALUE Move_POI_90_POI_99() [6, 10]
		MEETS {
			Visit_POI_99();
		}

		VALUE Move_POI_90_POI_87() [2, 4]
		MEETS {
			Visit_POI_87();
		}

		VALUE Move_POI_90_POI_98() [5, 7]
		MEETS {
			Visit_POI_98();
		}

		VALUE Move_POI_90_POI_86() [4, 6]
		MEETS {
			Visit_POI_86();
		}

		VALUE Move_POI_90_POI_97() [2, 2]
		MEETS {
			Visit_POI_97();
		}

		VALUE Move_POI_90_POI_101() [1, 1]
		MEETS {
			Visit_POI_101();
		}

		VALUE Move_POI_90_POI_85() [4, 6]
		MEETS {
			Visit_POI_85();
		}

		VALUE Move_POI_90_POI_96() [2, 2]
		MEETS {
			Visit_POI_96();
		}

		VALUE Move_POI_90_POI_100() [6, 8]
		MEETS {
			Visit_POI_100();
		}

		VALUE Move_POI_90_POI_84() [2, 4]
		MEETS {
			Visit_POI_84();
		}

		VALUE Move_POI_90_POI_95() [3, 5]
		MEETS {
			Visit_POI_95();
		}

		VALUE Move_POI_90_POI_103() [6, 8]
		MEETS {
			Visit_POI_103();
		}

		VALUE Move_POI_90_POI_94() [3, 5]
		MEETS {
			Visit_POI_94();
		}

		VALUE Move_POI_90_POI_102() [3, 5]
		MEETS {
			Visit_POI_102();
		}

		VALUE Move_POI_90_POI_93() [6, 10]
		MEETS {
			Visit_POI_93();
		}

		VALUE Move_POI_90_POI_92() [4, 6]
		MEETS {
			Visit_POI_92();
		}

		VALUE Move_POI_90_POI_91() [5, 7]
		MEETS {
			Visit_POI_91();
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

			cd0 <!> TripPath.hops.Visit_POI_89();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_88();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_99();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_87();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_98();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_86();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_97();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_101();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_85();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_96();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_100();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_84();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_95();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_103();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_94();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_102();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_93();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_92();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_91();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_90();
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

