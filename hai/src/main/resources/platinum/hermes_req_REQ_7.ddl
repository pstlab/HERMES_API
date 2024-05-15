DOMAIN TRIP_PLANNING {

	TEMPORAL_MODULE tm = [0, 249], 1000;

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
		 Visit_POI_130(), Move_Home_POI_130(), Move_POI_130_POI_110(), Move_POI_130_POI_132(), Move_POI_130_POI_131(), Move_POI_130_POI_112(), Move_POI_130_POI_111(), Move_POI_130_POI_114(), Move_POI_130_POI_113(), Move_POI_130_POI_127(), Move_POI_130_POI_126(), Move_POI_130_POI_129(), Move_POI_130_POI_128(), Move_POI_130_POI_109(), Move_POI_130_POI_108(), Move_POI_130_POI_121(), Move_POI_130_POI_120(), Move_POI_130_POI_123(), Move_POI_130_POI_122(), Move_POI_130_POI_125(), Move_POI_130_POI_124(), Move_POI_130_POI_116(), Move_POI_130_POI_115(), Move_POI_130_POI_118(), Move_POI_130_POI_117(), Move_POI_130_POI_119(), 
		 Visit_POI_110(), Move_Home_POI_110(), Move_POI_110_POI_130(), Move_POI_110_POI_132(), Move_POI_110_POI_131(), Move_POI_110_POI_112(), Move_POI_110_POI_111(), Move_POI_110_POI_114(), Move_POI_110_POI_113(), Move_POI_110_POI_127(), Move_POI_110_POI_126(), Move_POI_110_POI_129(), Move_POI_110_POI_128(), Move_POI_110_POI_109(), Move_POI_110_POI_108(), Move_POI_110_POI_121(), Move_POI_110_POI_120(), Move_POI_110_POI_123(), Move_POI_110_POI_122(), Move_POI_110_POI_125(), Move_POI_110_POI_124(), Move_POI_110_POI_116(), Move_POI_110_POI_115(), Move_POI_110_POI_118(), Move_POI_110_POI_117(), Move_POI_110_POI_119(), 
		 Visit_POI_132(), Move_Home_POI_132(), Move_POI_132_POI_130(), Move_POI_132_POI_110(), Move_POI_132_POI_131(), Move_POI_132_POI_112(), Move_POI_132_POI_111(), Move_POI_132_POI_114(), Move_POI_132_POI_113(), Move_POI_132_POI_127(), Move_POI_132_POI_126(), Move_POI_132_POI_129(), Move_POI_132_POI_128(), Move_POI_132_POI_109(), Move_POI_132_POI_108(), Move_POI_132_POI_121(), Move_POI_132_POI_120(), Move_POI_132_POI_123(), Move_POI_132_POI_122(), Move_POI_132_POI_125(), Move_POI_132_POI_124(), Move_POI_132_POI_116(), Move_POI_132_POI_115(), Move_POI_132_POI_118(), Move_POI_132_POI_117(), Move_POI_132_POI_119(), 
		 Visit_POI_131(), Move_Home_POI_131(), Move_POI_131_POI_130(), Move_POI_131_POI_110(), Move_POI_131_POI_132(), Move_POI_131_POI_112(), Move_POI_131_POI_111(), Move_POI_131_POI_114(), Move_POI_131_POI_113(), Move_POI_131_POI_127(), Move_POI_131_POI_126(), Move_POI_131_POI_129(), Move_POI_131_POI_128(), Move_POI_131_POI_109(), Move_POI_131_POI_108(), Move_POI_131_POI_121(), Move_POI_131_POI_120(), Move_POI_131_POI_123(), Move_POI_131_POI_122(), Move_POI_131_POI_125(), Move_POI_131_POI_124(), Move_POI_131_POI_116(), Move_POI_131_POI_115(), Move_POI_131_POI_118(), Move_POI_131_POI_117(), Move_POI_131_POI_119(), 
		 Visit_POI_112(), Move_Home_POI_112(), Move_POI_112_POI_130(), Move_POI_112_POI_110(), Move_POI_112_POI_132(), Move_POI_112_POI_131(), Move_POI_112_POI_111(), Move_POI_112_POI_114(), Move_POI_112_POI_113(), Move_POI_112_POI_127(), Move_POI_112_POI_126(), Move_POI_112_POI_129(), Move_POI_112_POI_128(), Move_POI_112_POI_109(), Move_POI_112_POI_108(), Move_POI_112_POI_121(), Move_POI_112_POI_120(), Move_POI_112_POI_123(), Move_POI_112_POI_122(), Move_POI_112_POI_125(), Move_POI_112_POI_124(), Move_POI_112_POI_116(), Move_POI_112_POI_115(), Move_POI_112_POI_118(), Move_POI_112_POI_117(), Move_POI_112_POI_119(), 
		 Visit_POI_111(), Move_Home_POI_111(), Move_POI_111_POI_130(), Move_POI_111_POI_110(), Move_POI_111_POI_132(), Move_POI_111_POI_131(), Move_POI_111_POI_112(), Move_POI_111_POI_114(), Move_POI_111_POI_113(), Move_POI_111_POI_127(), Move_POI_111_POI_126(), Move_POI_111_POI_129(), Move_POI_111_POI_128(), Move_POI_111_POI_109(), Move_POI_111_POI_108(), Move_POI_111_POI_121(), Move_POI_111_POI_120(), Move_POI_111_POI_123(), Move_POI_111_POI_122(), Move_POI_111_POI_125(), Move_POI_111_POI_124(), Move_POI_111_POI_116(), Move_POI_111_POI_115(), Move_POI_111_POI_118(), Move_POI_111_POI_117(), Move_POI_111_POI_119(), 
		 Visit_POI_114(), Move_Home_POI_114(), Move_POI_114_POI_130(), Move_POI_114_POI_110(), Move_POI_114_POI_132(), Move_POI_114_POI_131(), Move_POI_114_POI_112(), Move_POI_114_POI_111(), Move_POI_114_POI_113(), Move_POI_114_POI_127(), Move_POI_114_POI_126(), Move_POI_114_POI_129(), Move_POI_114_POI_128(), Move_POI_114_POI_109(), Move_POI_114_POI_108(), Move_POI_114_POI_121(), Move_POI_114_POI_120(), Move_POI_114_POI_123(), Move_POI_114_POI_122(), Move_POI_114_POI_125(), Move_POI_114_POI_124(), Move_POI_114_POI_116(), Move_POI_114_POI_115(), Move_POI_114_POI_118(), Move_POI_114_POI_117(), Move_POI_114_POI_119(), 
		 Visit_POI_113(), Move_Home_POI_113(), Move_POI_113_POI_130(), Move_POI_113_POI_110(), Move_POI_113_POI_132(), Move_POI_113_POI_131(), Move_POI_113_POI_112(), Move_POI_113_POI_111(), Move_POI_113_POI_114(), Move_POI_113_POI_127(), Move_POI_113_POI_126(), Move_POI_113_POI_129(), Move_POI_113_POI_128(), Move_POI_113_POI_109(), Move_POI_113_POI_108(), Move_POI_113_POI_121(), Move_POI_113_POI_120(), Move_POI_113_POI_123(), Move_POI_113_POI_122(), Move_POI_113_POI_125(), Move_POI_113_POI_124(), Move_POI_113_POI_116(), Move_POI_113_POI_115(), Move_POI_113_POI_118(), Move_POI_113_POI_117(), Move_POI_113_POI_119(), 
		 Visit_POI_127(), Move_Home_POI_127(), Move_POI_127_POI_130(), Move_POI_127_POI_110(), Move_POI_127_POI_132(), Move_POI_127_POI_131(), Move_POI_127_POI_112(), Move_POI_127_POI_111(), Move_POI_127_POI_114(), Move_POI_127_POI_113(), Move_POI_127_POI_126(), Move_POI_127_POI_129(), Move_POI_127_POI_128(), Move_POI_127_POI_109(), Move_POI_127_POI_108(), Move_POI_127_POI_121(), Move_POI_127_POI_120(), Move_POI_127_POI_123(), Move_POI_127_POI_122(), Move_POI_127_POI_125(), Move_POI_127_POI_124(), Move_POI_127_POI_116(), Move_POI_127_POI_115(), Move_POI_127_POI_118(), Move_POI_127_POI_117(), Move_POI_127_POI_119(), 
		 Visit_POI_126(), Move_Home_POI_126(), Move_POI_126_POI_130(), Move_POI_126_POI_110(), Move_POI_126_POI_132(), Move_POI_126_POI_131(), Move_POI_126_POI_112(), Move_POI_126_POI_111(), Move_POI_126_POI_114(), Move_POI_126_POI_113(), Move_POI_126_POI_127(), Move_POI_126_POI_129(), Move_POI_126_POI_128(), Move_POI_126_POI_109(), Move_POI_126_POI_108(), Move_POI_126_POI_121(), Move_POI_126_POI_120(), Move_POI_126_POI_123(), Move_POI_126_POI_122(), Move_POI_126_POI_125(), Move_POI_126_POI_124(), Move_POI_126_POI_116(), Move_POI_126_POI_115(), Move_POI_126_POI_118(), Move_POI_126_POI_117(), Move_POI_126_POI_119(), 
		 Visit_POI_129(), Move_Home_POI_129(), Move_POI_129_POI_130(), Move_POI_129_POI_110(), Move_POI_129_POI_132(), Move_POI_129_POI_131(), Move_POI_129_POI_112(), Move_POI_129_POI_111(), Move_POI_129_POI_114(), Move_POI_129_POI_113(), Move_POI_129_POI_127(), Move_POI_129_POI_126(), Move_POI_129_POI_128(), Move_POI_129_POI_109(), Move_POI_129_POI_108(), Move_POI_129_POI_121(), Move_POI_129_POI_120(), Move_POI_129_POI_123(), Move_POI_129_POI_122(), Move_POI_129_POI_125(), Move_POI_129_POI_124(), Move_POI_129_POI_116(), Move_POI_129_POI_115(), Move_POI_129_POI_118(), Move_POI_129_POI_117(), Move_POI_129_POI_119(), 
		 Visit_POI_128(), Move_Home_POI_128(), Move_POI_128_POI_130(), Move_POI_128_POI_110(), Move_POI_128_POI_132(), Move_POI_128_POI_131(), Move_POI_128_POI_112(), Move_POI_128_POI_111(), Move_POI_128_POI_114(), Move_POI_128_POI_113(), Move_POI_128_POI_127(), Move_POI_128_POI_126(), Move_POI_128_POI_129(), Move_POI_128_POI_109(), Move_POI_128_POI_108(), Move_POI_128_POI_121(), Move_POI_128_POI_120(), Move_POI_128_POI_123(), Move_POI_128_POI_122(), Move_POI_128_POI_125(), Move_POI_128_POI_124(), Move_POI_128_POI_116(), Move_POI_128_POI_115(), Move_POI_128_POI_118(), Move_POI_128_POI_117(), Move_POI_128_POI_119(), 
		 Visit_POI_109(), Move_Home_POI_109(), Move_POI_109_POI_130(), Move_POI_109_POI_110(), Move_POI_109_POI_132(), Move_POI_109_POI_131(), Move_POI_109_POI_112(), Move_POI_109_POI_111(), Move_POI_109_POI_114(), Move_POI_109_POI_113(), Move_POI_109_POI_127(), Move_POI_109_POI_126(), Move_POI_109_POI_129(), Move_POI_109_POI_128(), Move_POI_109_POI_108(), Move_POI_109_POI_121(), Move_POI_109_POI_120(), Move_POI_109_POI_123(), Move_POI_109_POI_122(), Move_POI_109_POI_125(), Move_POI_109_POI_124(), Move_POI_109_POI_116(), Move_POI_109_POI_115(), Move_POI_109_POI_118(), Move_POI_109_POI_117(), Move_POI_109_POI_119(), 
		 Visit_POI_108(), Move_Home_POI_108(), Move_POI_108_POI_130(), Move_POI_108_POI_110(), Move_POI_108_POI_132(), Move_POI_108_POI_131(), Move_POI_108_POI_112(), Move_POI_108_POI_111(), Move_POI_108_POI_114(), Move_POI_108_POI_113(), Move_POI_108_POI_127(), Move_POI_108_POI_126(), Move_POI_108_POI_129(), Move_POI_108_POI_128(), Move_POI_108_POI_109(), Move_POI_108_POI_121(), Move_POI_108_POI_120(), Move_POI_108_POI_123(), Move_POI_108_POI_122(), Move_POI_108_POI_125(), Move_POI_108_POI_124(), Move_POI_108_POI_116(), Move_POI_108_POI_115(), Move_POI_108_POI_118(), Move_POI_108_POI_117(), Move_POI_108_POI_119(), 
		 Visit_POI_121(), Move_Home_POI_121(), Move_POI_121_POI_130(), Move_POI_121_POI_110(), Move_POI_121_POI_132(), Move_POI_121_POI_131(), Move_POI_121_POI_112(), Move_POI_121_POI_111(), Move_POI_121_POI_114(), Move_POI_121_POI_113(), Move_POI_121_POI_127(), Move_POI_121_POI_126(), Move_POI_121_POI_129(), Move_POI_121_POI_128(), Move_POI_121_POI_109(), Move_POI_121_POI_108(), Move_POI_121_POI_120(), Move_POI_121_POI_123(), Move_POI_121_POI_122(), Move_POI_121_POI_125(), Move_POI_121_POI_124(), Move_POI_121_POI_116(), Move_POI_121_POI_115(), Move_POI_121_POI_118(), Move_POI_121_POI_117(), Move_POI_121_POI_119(), 
		 Visit_POI_120(), Move_Home_POI_120(), Move_POI_120_POI_130(), Move_POI_120_POI_110(), Move_POI_120_POI_132(), Move_POI_120_POI_131(), Move_POI_120_POI_112(), Move_POI_120_POI_111(), Move_POI_120_POI_114(), Move_POI_120_POI_113(), Move_POI_120_POI_127(), Move_POI_120_POI_126(), Move_POI_120_POI_129(), Move_POI_120_POI_128(), Move_POI_120_POI_109(), Move_POI_120_POI_108(), Move_POI_120_POI_121(), Move_POI_120_POI_123(), Move_POI_120_POI_122(), Move_POI_120_POI_125(), Move_POI_120_POI_124(), Move_POI_120_POI_116(), Move_POI_120_POI_115(), Move_POI_120_POI_118(), Move_POI_120_POI_117(), Move_POI_120_POI_119(), 
		 Visit_POI_123(), Move_Home_POI_123(), Move_POI_123_POI_130(), Move_POI_123_POI_110(), Move_POI_123_POI_132(), Move_POI_123_POI_131(), Move_POI_123_POI_112(), Move_POI_123_POI_111(), Move_POI_123_POI_114(), Move_POI_123_POI_113(), Move_POI_123_POI_127(), Move_POI_123_POI_126(), Move_POI_123_POI_129(), Move_POI_123_POI_128(), Move_POI_123_POI_109(), Move_POI_123_POI_108(), Move_POI_123_POI_121(), Move_POI_123_POI_120(), Move_POI_123_POI_122(), Move_POI_123_POI_125(), Move_POI_123_POI_124(), Move_POI_123_POI_116(), Move_POI_123_POI_115(), Move_POI_123_POI_118(), Move_POI_123_POI_117(), Move_POI_123_POI_119(), 
		 Visit_POI_122(), Move_Home_POI_122(), Move_POI_122_POI_130(), Move_POI_122_POI_110(), Move_POI_122_POI_132(), Move_POI_122_POI_131(), Move_POI_122_POI_112(), Move_POI_122_POI_111(), Move_POI_122_POI_114(), Move_POI_122_POI_113(), Move_POI_122_POI_127(), Move_POI_122_POI_126(), Move_POI_122_POI_129(), Move_POI_122_POI_128(), Move_POI_122_POI_109(), Move_POI_122_POI_108(), Move_POI_122_POI_121(), Move_POI_122_POI_120(), Move_POI_122_POI_123(), Move_POI_122_POI_125(), Move_POI_122_POI_124(), Move_POI_122_POI_116(), Move_POI_122_POI_115(), Move_POI_122_POI_118(), Move_POI_122_POI_117(), Move_POI_122_POI_119(), 
		 Visit_POI_125(), Move_Home_POI_125(), Move_POI_125_POI_130(), Move_POI_125_POI_110(), Move_POI_125_POI_132(), Move_POI_125_POI_131(), Move_POI_125_POI_112(), Move_POI_125_POI_111(), Move_POI_125_POI_114(), Move_POI_125_POI_113(), Move_POI_125_POI_127(), Move_POI_125_POI_126(), Move_POI_125_POI_129(), Move_POI_125_POI_128(), Move_POI_125_POI_109(), Move_POI_125_POI_108(), Move_POI_125_POI_121(), Move_POI_125_POI_120(), Move_POI_125_POI_123(), Move_POI_125_POI_122(), Move_POI_125_POI_124(), Move_POI_125_POI_116(), Move_POI_125_POI_115(), Move_POI_125_POI_118(), Move_POI_125_POI_117(), Move_POI_125_POI_119(), 
		 Visit_POI_124(), Move_Home_POI_124(), Move_POI_124_POI_130(), Move_POI_124_POI_110(), Move_POI_124_POI_132(), Move_POI_124_POI_131(), Move_POI_124_POI_112(), Move_POI_124_POI_111(), Move_POI_124_POI_114(), Move_POI_124_POI_113(), Move_POI_124_POI_127(), Move_POI_124_POI_126(), Move_POI_124_POI_129(), Move_POI_124_POI_128(), Move_POI_124_POI_109(), Move_POI_124_POI_108(), Move_POI_124_POI_121(), Move_POI_124_POI_120(), Move_POI_124_POI_123(), Move_POI_124_POI_122(), Move_POI_124_POI_125(), Move_POI_124_POI_116(), Move_POI_124_POI_115(), Move_POI_124_POI_118(), Move_POI_124_POI_117(), Move_POI_124_POI_119(), 
		 Visit_POI_116(), Move_Home_POI_116(), Move_POI_116_POI_130(), Move_POI_116_POI_110(), Move_POI_116_POI_132(), Move_POI_116_POI_131(), Move_POI_116_POI_112(), Move_POI_116_POI_111(), Move_POI_116_POI_114(), Move_POI_116_POI_113(), Move_POI_116_POI_127(), Move_POI_116_POI_126(), Move_POI_116_POI_129(), Move_POI_116_POI_128(), Move_POI_116_POI_109(), Move_POI_116_POI_108(), Move_POI_116_POI_121(), Move_POI_116_POI_120(), Move_POI_116_POI_123(), Move_POI_116_POI_122(), Move_POI_116_POI_125(), Move_POI_116_POI_124(), Move_POI_116_POI_115(), Move_POI_116_POI_118(), Move_POI_116_POI_117(), Move_POI_116_POI_119(), 
		 Visit_POI_115(), Move_Home_POI_115(), Move_POI_115_POI_130(), Move_POI_115_POI_110(), Move_POI_115_POI_132(), Move_POI_115_POI_131(), Move_POI_115_POI_112(), Move_POI_115_POI_111(), Move_POI_115_POI_114(), Move_POI_115_POI_113(), Move_POI_115_POI_127(), Move_POI_115_POI_126(), Move_POI_115_POI_129(), Move_POI_115_POI_128(), Move_POI_115_POI_109(), Move_POI_115_POI_108(), Move_POI_115_POI_121(), Move_POI_115_POI_120(), Move_POI_115_POI_123(), Move_POI_115_POI_122(), Move_POI_115_POI_125(), Move_POI_115_POI_124(), Move_POI_115_POI_116(), Move_POI_115_POI_118(), Move_POI_115_POI_117(), Move_POI_115_POI_119(), 
		 Visit_POI_118(), Move_Home_POI_118(), Move_POI_118_POI_130(), Move_POI_118_POI_110(), Move_POI_118_POI_132(), Move_POI_118_POI_131(), Move_POI_118_POI_112(), Move_POI_118_POI_111(), Move_POI_118_POI_114(), Move_POI_118_POI_113(), Move_POI_118_POI_127(), Move_POI_118_POI_126(), Move_POI_118_POI_129(), Move_POI_118_POI_128(), Move_POI_118_POI_109(), Move_POI_118_POI_108(), Move_POI_118_POI_121(), Move_POI_118_POI_120(), Move_POI_118_POI_123(), Move_POI_118_POI_122(), Move_POI_118_POI_125(), Move_POI_118_POI_124(), Move_POI_118_POI_116(), Move_POI_118_POI_115(), Move_POI_118_POI_117(), Move_POI_118_POI_119(), 
		 Visit_POI_117(), Move_Home_POI_117(), Move_POI_117_POI_130(), Move_POI_117_POI_110(), Move_POI_117_POI_132(), Move_POI_117_POI_131(), Move_POI_117_POI_112(), Move_POI_117_POI_111(), Move_POI_117_POI_114(), Move_POI_117_POI_113(), Move_POI_117_POI_127(), Move_POI_117_POI_126(), Move_POI_117_POI_129(), Move_POI_117_POI_128(), Move_POI_117_POI_109(), Move_POI_117_POI_108(), Move_POI_117_POI_121(), Move_POI_117_POI_120(), Move_POI_117_POI_123(), Move_POI_117_POI_122(), Move_POI_117_POI_125(), Move_POI_117_POI_124(), Move_POI_117_POI_116(), Move_POI_117_POI_115(), Move_POI_117_POI_118(), Move_POI_117_POI_119(), 
		 Visit_POI_119(), Move_Home_POI_119(), Move_POI_119_POI_130(), Move_POI_119_POI_110(), Move_POI_119_POI_132(), Move_POI_119_POI_131(), Move_POI_119_POI_112(), Move_POI_119_POI_111(), Move_POI_119_POI_114(), Move_POI_119_POI_113(), Move_POI_119_POI_127(), Move_POI_119_POI_126(), Move_POI_119_POI_129(), Move_POI_119_POI_128(), Move_POI_119_POI_109(), Move_POI_119_POI_108(), Move_POI_119_POI_121(), Move_POI_119_POI_120(), Move_POI_119_POI_123(), Move_POI_119_POI_122(), Move_POI_119_POI_125(), Move_POI_119_POI_124(), Move_POI_119_POI_116(), Move_POI_119_POI_115(), Move_POI_119_POI_118(), Move_POI_119_POI_117(), 
	) {

		VALUE Home() [1, 1]
		MEETS {
			Move_Home_POI_130();
			Move_Home_POI_110();
			Move_Home_POI_132();
			Move_Home_POI_131();
			Move_Home_POI_112();
			Move_Home_POI_111();
			Move_Home_POI_114();
			Move_Home_POI_113();
			Move_Home_POI_127();
			Move_Home_POI_126();
			Move_Home_POI_129();
			Move_Home_POI_128();
			Move_Home_POI_109();
			Move_Home_POI_108();
			Move_Home_POI_121();
			Move_Home_POI_120();
			Move_Home_POI_123();
			Move_Home_POI_122();
			Move_Home_POI_125();
			Move_Home_POI_124();
			Move_Home_POI_116();
			Move_Home_POI_115();
			Move_Home_POI_118();
			Move_Home_POI_117();
			Move_Home_POI_119();
		}

		VALUE Finish() [1, +INF]
		MEETS {
			Home();
		}

		VALUE Move_Home_POI_130() [2, 2]
		MEETS {
			Visit_POI_130();
		}

		VALUE Move_Home_POI_110() [4, 6]
		MEETS {
			Visit_POI_110();
		}

		VALUE Move_Home_POI_132() [4, 6]
		MEETS {
			Visit_POI_132();
		}

		VALUE Move_Home_POI_131() [3, 5]
		MEETS {
			Visit_POI_131();
		}

		VALUE Move_Home_POI_112() [7, 11]
		MEETS {
			Visit_POI_112();
		}

		VALUE Move_Home_POI_111() [4, 6]
		MEETS {
			Visit_POI_111();
		}

		VALUE Move_Home_POI_114() [2, 2]
		MEETS {
			Visit_POI_114();
		}

		VALUE Move_Home_POI_113() [5, 7]
		MEETS {
			Visit_POI_113();
		}

		VALUE Move_Home_POI_127() [5, 7]
		MEETS {
			Visit_POI_127();
		}

		VALUE Move_Home_POI_126() [2, 4]
		MEETS {
			Visit_POI_126();
		}

		VALUE Move_Home_POI_129() [6, 8]
		MEETS {
			Visit_POI_129();
		}

		VALUE Move_Home_POI_128() [2, 2]
		MEETS {
			Visit_POI_128();
		}

		VALUE Move_Home_POI_109() [4, 6]
		MEETS {
			Visit_POI_109();
		}

		VALUE Move_Home_POI_108() [2, 2]
		MEETS {
			Visit_POI_108();
		}

		VALUE Move_Home_POI_121() [4, 6]
		MEETS {
			Visit_POI_121();
		}

		VALUE Move_Home_POI_120() [6, 8]
		MEETS {
			Visit_POI_120();
		}

		VALUE Move_Home_POI_123() [2, 2]
		MEETS {
			Visit_POI_123();
		}

		VALUE Move_Home_POI_122() [7, 11]
		MEETS {
			Visit_POI_122();
		}

		VALUE Move_Home_POI_125() [2, 2]
		MEETS {
			Visit_POI_125();
		}

		VALUE Move_Home_POI_124() [2, 2]
		MEETS {
			Visit_POI_124();
		}

		VALUE Move_Home_POI_116() [4, 6]
		MEETS {
			Visit_POI_116();
		}

		VALUE Move_Home_POI_115() [2, 4]
		MEETS {
			Visit_POI_115();
		}

		VALUE Move_Home_POI_118() [2, 2]
		MEETS {
			Visit_POI_118();
		}

		VALUE Move_Home_POI_117() [6, 8]
		MEETS {
			Visit_POI_117();
		}

		VALUE Move_Home_POI_119() [2, 4]
		MEETS {
			Visit_POI_119();
		}

		VALUE Visit_POI_130() [8, 12]
		MEETS {
			Move_POI_130_POI_110();
			Move_POI_130_POI_132();
			Move_POI_130_POI_131();
			Move_POI_130_POI_112();
			Move_POI_130_POI_111();
			Move_POI_130_POI_114();
			Move_POI_130_POI_113();
			Move_POI_130_POI_127();
			Move_POI_130_POI_126();
			Move_POI_130_POI_129();
			Move_POI_130_POI_128();
			Move_POI_130_POI_109();
			Move_POI_130_POI_108();
			Move_POI_130_POI_121();
			Move_POI_130_POI_120();
			Move_POI_130_POI_123();
			Move_POI_130_POI_122();
			Move_POI_130_POI_125();
			Move_POI_130_POI_124();
			Move_POI_130_POI_116();
			Move_POI_130_POI_115();
			Move_POI_130_POI_118();
			Move_POI_130_POI_117();
			Move_POI_130_POI_119();
			Finish();
		}

		VALUE Move_POI_130_POI_110() [3, 5]
		MEETS {
			Visit_POI_110();
		}

		VALUE Move_POI_130_POI_132() [7, 11]
		MEETS {
			Visit_POI_132();
		}

		VALUE Move_POI_130_POI_131() [2, 2]
		MEETS {
			Visit_POI_131();
		}

		VALUE Move_POI_130_POI_112() [5, 7]
		MEETS {
			Visit_POI_112();
		}

		VALUE Move_POI_130_POI_111() [6, 10]
		MEETS {
			Visit_POI_111();
		}

		VALUE Move_POI_130_POI_114() [7, 11]
		MEETS {
			Visit_POI_114();
		}

		VALUE Move_POI_130_POI_113() [7, 11]
		MEETS {
			Visit_POI_113();
		}

		VALUE Move_POI_130_POI_127() [6, 8]
		MEETS {
			Visit_POI_127();
		}

		VALUE Move_POI_130_POI_126() [6, 8]
		MEETS {
			Visit_POI_126();
		}

		VALUE Move_POI_130_POI_129() [2, 4]
		MEETS {
			Visit_POI_129();
		}

		VALUE Move_POI_130_POI_128() [4, 6]
		MEETS {
			Visit_POI_128();
		}

		VALUE Move_POI_130_POI_109() [6, 8]
		MEETS {
			Visit_POI_109();
		}

		VALUE Move_POI_130_POI_108() [6, 10]
		MEETS {
			Visit_POI_108();
		}

		VALUE Move_POI_130_POI_121() [3, 5]
		MEETS {
			Visit_POI_121();
		}

		VALUE Move_POI_130_POI_120() [3, 5]
		MEETS {
			Visit_POI_120();
		}

		VALUE Move_POI_130_POI_123() [1, 1]
		MEETS {
			Visit_POI_123();
		}

		VALUE Move_POI_130_POI_122() [5, 7]
		MEETS {
			Visit_POI_122();
		}

		VALUE Move_POI_130_POI_125() [2, 2]
		MEETS {
			Visit_POI_125();
		}

		VALUE Move_POI_130_POI_124() [5, 7]
		MEETS {
			Visit_POI_124();
		}

		VALUE Move_POI_130_POI_116() [4, 6]
		MEETS {
			Visit_POI_116();
		}

		VALUE Move_POI_130_POI_115() [2, 4]
		MEETS {
			Visit_POI_115();
		}

		VALUE Move_POI_130_POI_118() [4, 6]
		MEETS {
			Visit_POI_118();
		}

		VALUE Move_POI_130_POI_117() [3, 5]
		MEETS {
			Visit_POI_117();
		}

		VALUE Move_POI_130_POI_119() [5, 7]
		MEETS {
			Visit_POI_119();
		}

		VALUE Visit_POI_110() [8, 12]
		MEETS {
			Move_POI_110_POI_130();
			Move_POI_110_POI_132();
			Move_POI_110_POI_131();
			Move_POI_110_POI_112();
			Move_POI_110_POI_111();
			Move_POI_110_POI_114();
			Move_POI_110_POI_113();
			Move_POI_110_POI_127();
			Move_POI_110_POI_126();
			Move_POI_110_POI_129();
			Move_POI_110_POI_128();
			Move_POI_110_POI_109();
			Move_POI_110_POI_108();
			Move_POI_110_POI_121();
			Move_POI_110_POI_120();
			Move_POI_110_POI_123();
			Move_POI_110_POI_122();
			Move_POI_110_POI_125();
			Move_POI_110_POI_124();
			Move_POI_110_POI_116();
			Move_POI_110_POI_115();
			Move_POI_110_POI_118();
			Move_POI_110_POI_117();
			Move_POI_110_POI_119();
			Finish();
		}

		VALUE Move_POI_110_POI_130() [7, 11]
		MEETS {
			Visit_POI_130();
		}

		VALUE Move_POI_110_POI_132() [4, 6]
		MEETS {
			Visit_POI_132();
		}

		VALUE Move_POI_110_POI_131() [4, 6]
		MEETS {
			Visit_POI_131();
		}

		VALUE Move_POI_110_POI_112() [2, 2]
		MEETS {
			Visit_POI_112();
		}

		VALUE Move_POI_110_POI_111() [4, 6]
		MEETS {
			Visit_POI_111();
		}

		VALUE Move_POI_110_POI_114() [2, 2]
		MEETS {
			Visit_POI_114();
		}

		VALUE Move_POI_110_POI_113() [1, 1]
		MEETS {
			Visit_POI_113();
		}

		VALUE Move_POI_110_POI_127() [4, 6]
		MEETS {
			Visit_POI_127();
		}

		VALUE Move_POI_110_POI_126() [2, 4]
		MEETS {
			Visit_POI_126();
		}

		VALUE Move_POI_110_POI_129() [7, 11]
		MEETS {
			Visit_POI_129();
		}

		VALUE Move_POI_110_POI_128() [7, 11]
		MEETS {
			Visit_POI_128();
		}

		VALUE Move_POI_110_POI_109() [2, 4]
		MEETS {
			Visit_POI_109();
		}

		VALUE Move_POI_110_POI_108() [2, 2]
		MEETS {
			Visit_POI_108();
		}

		VALUE Move_POI_110_POI_121() [4, 6]
		MEETS {
			Visit_POI_121();
		}

		VALUE Move_POI_110_POI_120() [5, 7]
		MEETS {
			Visit_POI_120();
		}

		VALUE Move_POI_110_POI_123() [2, 2]
		MEETS {
			Visit_POI_123();
		}

		VALUE Move_POI_110_POI_122() [2, 2]
		MEETS {
			Visit_POI_122();
		}

		VALUE Move_POI_110_POI_125() [2, 2]
		MEETS {
			Visit_POI_125();
		}

		VALUE Move_POI_110_POI_124() [5, 7]
		MEETS {
			Visit_POI_124();
		}

		VALUE Move_POI_110_POI_116() [4, 6]
		MEETS {
			Visit_POI_116();
		}

		VALUE Move_POI_110_POI_115() [4, 6]
		MEETS {
			Visit_POI_115();
		}

		VALUE Move_POI_110_POI_118() [6, 8]
		MEETS {
			Visit_POI_118();
		}

		VALUE Move_POI_110_POI_117() [6, 10]
		MEETS {
			Visit_POI_117();
		}

		VALUE Move_POI_110_POI_119() [3, 5]
		MEETS {
			Visit_POI_119();
		}

		VALUE Visit_POI_132() [8, 12]
		MEETS {
			Move_POI_132_POI_130();
			Move_POI_132_POI_110();
			Move_POI_132_POI_131();
			Move_POI_132_POI_112();
			Move_POI_132_POI_111();
			Move_POI_132_POI_114();
			Move_POI_132_POI_113();
			Move_POI_132_POI_127();
			Move_POI_132_POI_126();
			Move_POI_132_POI_129();
			Move_POI_132_POI_128();
			Move_POI_132_POI_109();
			Move_POI_132_POI_108();
			Move_POI_132_POI_121();
			Move_POI_132_POI_120();
			Move_POI_132_POI_123();
			Move_POI_132_POI_122();
			Move_POI_132_POI_125();
			Move_POI_132_POI_124();
			Move_POI_132_POI_116();
			Move_POI_132_POI_115();
			Move_POI_132_POI_118();
			Move_POI_132_POI_117();
			Move_POI_132_POI_119();
			Finish();
		}

		VALUE Move_POI_132_POI_130() [6, 10]
		MEETS {
			Visit_POI_130();
		}

		VALUE Move_POI_132_POI_110() [6, 10]
		MEETS {
			Visit_POI_110();
		}

		VALUE Move_POI_132_POI_131() [6, 10]
		MEETS {
			Visit_POI_131();
		}

		VALUE Move_POI_132_POI_112() [6, 10]
		MEETS {
			Visit_POI_112();
		}

		VALUE Move_POI_132_POI_111() [6, 8]
		MEETS {
			Visit_POI_111();
		}

		VALUE Move_POI_132_POI_114() [4, 6]
		MEETS {
			Visit_POI_114();
		}

		VALUE Move_POI_132_POI_113() [5, 7]
		MEETS {
			Visit_POI_113();
		}

		VALUE Move_POI_132_POI_127() [3, 5]
		MEETS {
			Visit_POI_127();
		}

		VALUE Move_POI_132_POI_126() [3, 5]
		MEETS {
			Visit_POI_126();
		}

		VALUE Move_POI_132_POI_129() [6, 8]
		MEETS {
			Visit_POI_129();
		}

		VALUE Move_POI_132_POI_128() [1, 1]
		MEETS {
			Visit_POI_128();
		}

		VALUE Move_POI_132_POI_109() [4, 6]
		MEETS {
			Visit_POI_109();
		}

		VALUE Move_POI_132_POI_108() [4, 6]
		MEETS {
			Visit_POI_108();
		}

		VALUE Move_POI_132_POI_121() [4, 6]
		MEETS {
			Visit_POI_121();
		}

		VALUE Move_POI_132_POI_120() [2, 4]
		MEETS {
			Visit_POI_120();
		}

		VALUE Move_POI_132_POI_123() [2, 4]
		MEETS {
			Visit_POI_123();
		}

		VALUE Move_POI_132_POI_122() [2, 2]
		MEETS {
			Visit_POI_122();
		}

		VALUE Move_POI_132_POI_125() [7, 11]
		MEETS {
			Visit_POI_125();
		}

		VALUE Move_POI_132_POI_124() [7, 11]
		MEETS {
			Visit_POI_124();
		}

		VALUE Move_POI_132_POI_116() [2, 4]
		MEETS {
			Visit_POI_116();
		}

		VALUE Move_POI_132_POI_115() [4, 6]
		MEETS {
			Visit_POI_115();
		}

		VALUE Move_POI_132_POI_118() [6, 8]
		MEETS {
			Visit_POI_118();
		}

		VALUE Move_POI_132_POI_117() [1, 1]
		MEETS {
			Visit_POI_117();
		}

		VALUE Move_POI_132_POI_119() [6, 8]
		MEETS {
			Visit_POI_119();
		}

		VALUE Visit_POI_131() [48, 72]
		MEETS {
			Move_POI_131_POI_130();
			Move_POI_131_POI_110();
			Move_POI_131_POI_132();
			Move_POI_131_POI_112();
			Move_POI_131_POI_111();
			Move_POI_131_POI_114();
			Move_POI_131_POI_113();
			Move_POI_131_POI_127();
			Move_POI_131_POI_126();
			Move_POI_131_POI_129();
			Move_POI_131_POI_128();
			Move_POI_131_POI_109();
			Move_POI_131_POI_108();
			Move_POI_131_POI_121();
			Move_POI_131_POI_120();
			Move_POI_131_POI_123();
			Move_POI_131_POI_122();
			Move_POI_131_POI_125();
			Move_POI_131_POI_124();
			Move_POI_131_POI_116();
			Move_POI_131_POI_115();
			Move_POI_131_POI_118();
			Move_POI_131_POI_117();
			Move_POI_131_POI_119();
			Finish();
		}

		VALUE Move_POI_131_POI_130() [4, 6]
		MEETS {
			Visit_POI_130();
		}

		VALUE Move_POI_131_POI_110() [4, 6]
		MEETS {
			Visit_POI_110();
		}

		VALUE Move_POI_131_POI_132() [1, 1]
		MEETS {
			Visit_POI_132();
		}

		VALUE Move_POI_131_POI_112() [6, 10]
		MEETS {
			Visit_POI_112();
		}

		VALUE Move_POI_131_POI_111() [7, 11]
		MEETS {
			Visit_POI_111();
		}

		VALUE Move_POI_131_POI_114() [2, 4]
		MEETS {
			Visit_POI_114();
		}

		VALUE Move_POI_131_POI_113() [7, 11]
		MEETS {
			Visit_POI_113();
		}

		VALUE Move_POI_131_POI_127() [2, 2]
		MEETS {
			Visit_POI_127();
		}

		VALUE Move_POI_131_POI_126() [2, 2]
		MEETS {
			Visit_POI_126();
		}

		VALUE Move_POI_131_POI_129() [5, 7]
		MEETS {
			Visit_POI_129();
		}

		VALUE Move_POI_131_POI_128() [5, 7]
		MEETS {
			Visit_POI_128();
		}

		VALUE Move_POI_131_POI_109() [1, 1]
		MEETS {
			Visit_POI_109();
		}

		VALUE Move_POI_131_POI_108() [6, 10]
		MEETS {
			Visit_POI_108();
		}

		VALUE Move_POI_131_POI_121() [7, 11]
		MEETS {
			Visit_POI_121();
		}

		VALUE Move_POI_131_POI_120() [6, 10]
		MEETS {
			Visit_POI_120();
		}

		VALUE Move_POI_131_POI_123() [5, 7]
		MEETS {
			Visit_POI_123();
		}

		VALUE Move_POI_131_POI_122() [6, 8]
		MEETS {
			Visit_POI_122();
		}

		VALUE Move_POI_131_POI_125() [3, 5]
		MEETS {
			Visit_POI_125();
		}

		VALUE Move_POI_131_POI_124() [6, 8]
		MEETS {
			Visit_POI_124();
		}

		VALUE Move_POI_131_POI_116() [3, 5]
		MEETS {
			Visit_POI_116();
		}

		VALUE Move_POI_131_POI_115() [5, 7]
		MEETS {
			Visit_POI_115();
		}

		VALUE Move_POI_131_POI_118() [6, 10]
		MEETS {
			Visit_POI_118();
		}

		VALUE Move_POI_131_POI_117() [5, 7]
		MEETS {
			Visit_POI_117();
		}

		VALUE Move_POI_131_POI_119() [5, 7]
		MEETS {
			Visit_POI_119();
		}

		VALUE Visit_POI_112() [24, 36]
		MEETS {
			Move_POI_112_POI_130();
			Move_POI_112_POI_110();
			Move_POI_112_POI_132();
			Move_POI_112_POI_131();
			Move_POI_112_POI_111();
			Move_POI_112_POI_114();
			Move_POI_112_POI_113();
			Move_POI_112_POI_127();
			Move_POI_112_POI_126();
			Move_POI_112_POI_129();
			Move_POI_112_POI_128();
			Move_POI_112_POI_109();
			Move_POI_112_POI_108();
			Move_POI_112_POI_121();
			Move_POI_112_POI_120();
			Move_POI_112_POI_123();
			Move_POI_112_POI_122();
			Move_POI_112_POI_125();
			Move_POI_112_POI_124();
			Move_POI_112_POI_116();
			Move_POI_112_POI_115();
			Move_POI_112_POI_118();
			Move_POI_112_POI_117();
			Move_POI_112_POI_119();
			Finish();
		}

		VALUE Move_POI_112_POI_130() [4, 6]
		MEETS {
			Visit_POI_130();
		}

		VALUE Move_POI_112_POI_110() [4, 6]
		MEETS {
			Visit_POI_110();
		}

		VALUE Move_POI_112_POI_132() [3, 5]
		MEETS {
			Visit_POI_132();
		}

		VALUE Move_POI_112_POI_131() [2, 4]
		MEETS {
			Visit_POI_131();
		}

		VALUE Move_POI_112_POI_111() [4, 6]
		MEETS {
			Visit_POI_111();
		}

		VALUE Move_POI_112_POI_114() [6, 8]
		MEETS {
			Visit_POI_114();
		}

		VALUE Move_POI_112_POI_113() [3, 5]
		MEETS {
			Visit_POI_113();
		}

		VALUE Move_POI_112_POI_127() [3, 5]
		MEETS {
			Visit_POI_127();
		}

		VALUE Move_POI_112_POI_126() [6, 8]
		MEETS {
			Visit_POI_126();
		}

		VALUE Move_POI_112_POI_129() [7, 11]
		MEETS {
			Visit_POI_129();
		}

		VALUE Move_POI_112_POI_128() [6, 10]
		MEETS {
			Visit_POI_128();
		}

		VALUE Move_POI_112_POI_109() [7, 11]
		MEETS {
			Visit_POI_109();
		}

		VALUE Move_POI_112_POI_108() [6, 10]
		MEETS {
			Visit_POI_108();
		}

		VALUE Move_POI_112_POI_121() [4, 6]
		MEETS {
			Visit_POI_121();
		}

		VALUE Move_POI_112_POI_120() [1, 1]
		MEETS {
			Visit_POI_120();
		}

		VALUE Move_POI_112_POI_123() [7, 11]
		MEETS {
			Visit_POI_123();
		}

		VALUE Move_POI_112_POI_122() [2, 2]
		MEETS {
			Visit_POI_122();
		}

		VALUE Move_POI_112_POI_125() [5, 7]
		MEETS {
			Visit_POI_125();
		}

		VALUE Move_POI_112_POI_124() [4, 6]
		MEETS {
			Visit_POI_124();
		}

		VALUE Move_POI_112_POI_116() [2, 4]
		MEETS {
			Visit_POI_116();
		}

		VALUE Move_POI_112_POI_115() [7, 11]
		MEETS {
			Visit_POI_115();
		}

		VALUE Move_POI_112_POI_118() [6, 8]
		MEETS {
			Visit_POI_118();
		}

		VALUE Move_POI_112_POI_117() [4, 6]
		MEETS {
			Visit_POI_117();
		}

		VALUE Move_POI_112_POI_119() [7, 11]
		MEETS {
			Visit_POI_119();
		}

		VALUE Visit_POI_111() [36, 54]
		MEETS {
			Move_POI_111_POI_130();
			Move_POI_111_POI_110();
			Move_POI_111_POI_132();
			Move_POI_111_POI_131();
			Move_POI_111_POI_112();
			Move_POI_111_POI_114();
			Move_POI_111_POI_113();
			Move_POI_111_POI_127();
			Move_POI_111_POI_126();
			Move_POI_111_POI_129();
			Move_POI_111_POI_128();
			Move_POI_111_POI_109();
			Move_POI_111_POI_108();
			Move_POI_111_POI_121();
			Move_POI_111_POI_120();
			Move_POI_111_POI_123();
			Move_POI_111_POI_122();
			Move_POI_111_POI_125();
			Move_POI_111_POI_124();
			Move_POI_111_POI_116();
			Move_POI_111_POI_115();
			Move_POI_111_POI_118();
			Move_POI_111_POI_117();
			Move_POI_111_POI_119();
			Finish();
		}

		VALUE Move_POI_111_POI_130() [7, 11]
		MEETS {
			Visit_POI_130();
		}

		VALUE Move_POI_111_POI_110() [6, 10]
		MEETS {
			Visit_POI_110();
		}

		VALUE Move_POI_111_POI_132() [6, 8]
		MEETS {
			Visit_POI_132();
		}

		VALUE Move_POI_111_POI_131() [3, 5]
		MEETS {
			Visit_POI_131();
		}

		VALUE Move_POI_111_POI_112() [7, 11]
		MEETS {
			Visit_POI_112();
		}

		VALUE Move_POI_111_POI_114() [7, 11]
		MEETS {
			Visit_POI_114();
		}

		VALUE Move_POI_111_POI_113() [3, 5]
		MEETS {
			Visit_POI_113();
		}

		VALUE Move_POI_111_POI_127() [6, 10]
		MEETS {
			Visit_POI_127();
		}

		VALUE Move_POI_111_POI_126() [2, 4]
		MEETS {
			Visit_POI_126();
		}

		VALUE Move_POI_111_POI_129() [2, 2]
		MEETS {
			Visit_POI_129();
		}

		VALUE Move_POI_111_POI_128() [4, 6]
		MEETS {
			Visit_POI_128();
		}

		VALUE Move_POI_111_POI_109() [6, 10]
		MEETS {
			Visit_POI_109();
		}

		VALUE Move_POI_111_POI_108() [2, 4]
		MEETS {
			Visit_POI_108();
		}

		VALUE Move_POI_111_POI_121() [1, 1]
		MEETS {
			Visit_POI_121();
		}

		VALUE Move_POI_111_POI_120() [1, 1]
		MEETS {
			Visit_POI_120();
		}

		VALUE Move_POI_111_POI_123() [6, 8]
		MEETS {
			Visit_POI_123();
		}

		VALUE Move_POI_111_POI_122() [6, 8]
		MEETS {
			Visit_POI_122();
		}

		VALUE Move_POI_111_POI_125() [2, 4]
		MEETS {
			Visit_POI_125();
		}

		VALUE Move_POI_111_POI_124() [2, 4]
		MEETS {
			Visit_POI_124();
		}

		VALUE Move_POI_111_POI_116() [6, 10]
		MEETS {
			Visit_POI_116();
		}

		VALUE Move_POI_111_POI_115() [5, 7]
		MEETS {
			Visit_POI_115();
		}

		VALUE Move_POI_111_POI_118() [3, 5]
		MEETS {
			Visit_POI_118();
		}

		VALUE Move_POI_111_POI_117() [2, 4]
		MEETS {
			Visit_POI_117();
		}

		VALUE Move_POI_111_POI_119() [1, 1]
		MEETS {
			Visit_POI_119();
		}

		VALUE Visit_POI_114() [8, 12]
		MEETS {
			Move_POI_114_POI_130();
			Move_POI_114_POI_110();
			Move_POI_114_POI_132();
			Move_POI_114_POI_131();
			Move_POI_114_POI_112();
			Move_POI_114_POI_111();
			Move_POI_114_POI_113();
			Move_POI_114_POI_127();
			Move_POI_114_POI_126();
			Move_POI_114_POI_129();
			Move_POI_114_POI_128();
			Move_POI_114_POI_109();
			Move_POI_114_POI_108();
			Move_POI_114_POI_121();
			Move_POI_114_POI_120();
			Move_POI_114_POI_123();
			Move_POI_114_POI_122();
			Move_POI_114_POI_125();
			Move_POI_114_POI_124();
			Move_POI_114_POI_116();
			Move_POI_114_POI_115();
			Move_POI_114_POI_118();
			Move_POI_114_POI_117();
			Move_POI_114_POI_119();
			Finish();
		}

		VALUE Move_POI_114_POI_130() [1, 1]
		MEETS {
			Visit_POI_130();
		}

		VALUE Move_POI_114_POI_110() [3, 5]
		MEETS {
			Visit_POI_110();
		}

		VALUE Move_POI_114_POI_132() [2, 2]
		MEETS {
			Visit_POI_132();
		}

		VALUE Move_POI_114_POI_131() [7, 11]
		MEETS {
			Visit_POI_131();
		}

		VALUE Move_POI_114_POI_112() [5, 7]
		MEETS {
			Visit_POI_112();
		}

		VALUE Move_POI_114_POI_111() [5, 7]
		MEETS {
			Visit_POI_111();
		}

		VALUE Move_POI_114_POI_113() [1, 1]
		MEETS {
			Visit_POI_113();
		}

		VALUE Move_POI_114_POI_127() [5, 7]
		MEETS {
			Visit_POI_127();
		}

		VALUE Move_POI_114_POI_126() [6, 10]
		MEETS {
			Visit_POI_126();
		}

		VALUE Move_POI_114_POI_129() [3, 5]
		MEETS {
			Visit_POI_129();
		}

		VALUE Move_POI_114_POI_128() [7, 11]
		MEETS {
			Visit_POI_128();
		}

		VALUE Move_POI_114_POI_109() [2, 4]
		MEETS {
			Visit_POI_109();
		}

		VALUE Move_POI_114_POI_108() [2, 4]
		MEETS {
			Visit_POI_108();
		}

		VALUE Move_POI_114_POI_121() [2, 2]
		MEETS {
			Visit_POI_121();
		}

		VALUE Move_POI_114_POI_120() [4, 6]
		MEETS {
			Visit_POI_120();
		}

		VALUE Move_POI_114_POI_123() [4, 6]
		MEETS {
			Visit_POI_123();
		}

		VALUE Move_POI_114_POI_122() [2, 2]
		MEETS {
			Visit_POI_122();
		}

		VALUE Move_POI_114_POI_125() [6, 8]
		MEETS {
			Visit_POI_125();
		}

		VALUE Move_POI_114_POI_124() [2, 2]
		MEETS {
			Visit_POI_124();
		}

		VALUE Move_POI_114_POI_116() [6, 10]
		MEETS {
			Visit_POI_116();
		}

		VALUE Move_POI_114_POI_115() [2, 2]
		MEETS {
			Visit_POI_115();
		}

		VALUE Move_POI_114_POI_118() [7, 11]
		MEETS {
			Visit_POI_118();
		}

		VALUE Move_POI_114_POI_117() [6, 8]
		MEETS {
			Visit_POI_117();
		}

		VALUE Move_POI_114_POI_119() [4, 6]
		MEETS {
			Visit_POI_119();
		}

		VALUE Visit_POI_113() [8, 12]
		MEETS {
			Move_POI_113_POI_130();
			Move_POI_113_POI_110();
			Move_POI_113_POI_132();
			Move_POI_113_POI_131();
			Move_POI_113_POI_112();
			Move_POI_113_POI_111();
			Move_POI_113_POI_114();
			Move_POI_113_POI_127();
			Move_POI_113_POI_126();
			Move_POI_113_POI_129();
			Move_POI_113_POI_128();
			Move_POI_113_POI_109();
			Move_POI_113_POI_108();
			Move_POI_113_POI_121();
			Move_POI_113_POI_120();
			Move_POI_113_POI_123();
			Move_POI_113_POI_122();
			Move_POI_113_POI_125();
			Move_POI_113_POI_124();
			Move_POI_113_POI_116();
			Move_POI_113_POI_115();
			Move_POI_113_POI_118();
			Move_POI_113_POI_117();
			Move_POI_113_POI_119();
			Finish();
		}

		VALUE Move_POI_113_POI_130() [1, 1]
		MEETS {
			Visit_POI_130();
		}

		VALUE Move_POI_113_POI_110() [4, 6]
		MEETS {
			Visit_POI_110();
		}

		VALUE Move_POI_113_POI_132() [1, 1]
		MEETS {
			Visit_POI_132();
		}

		VALUE Move_POI_113_POI_131() [6, 8]
		MEETS {
			Visit_POI_131();
		}

		VALUE Move_POI_113_POI_112() [1, 1]
		MEETS {
			Visit_POI_112();
		}

		VALUE Move_POI_113_POI_111() [5, 7]
		MEETS {
			Visit_POI_111();
		}

		VALUE Move_POI_113_POI_114() [3, 5]
		MEETS {
			Visit_POI_114();
		}

		VALUE Move_POI_113_POI_127() [2, 2]
		MEETS {
			Visit_POI_127();
		}

		VALUE Move_POI_113_POI_126() [2, 2]
		MEETS {
			Visit_POI_126();
		}

		VALUE Move_POI_113_POI_129() [2, 2]
		MEETS {
			Visit_POI_129();
		}

		VALUE Move_POI_113_POI_128() [6, 10]
		MEETS {
			Visit_POI_128();
		}

		VALUE Move_POI_113_POI_109() [2, 4]
		MEETS {
			Visit_POI_109();
		}

		VALUE Move_POI_113_POI_108() [1, 1]
		MEETS {
			Visit_POI_108();
		}

		VALUE Move_POI_113_POI_121() [2, 4]
		MEETS {
			Visit_POI_121();
		}

		VALUE Move_POI_113_POI_120() [6, 8]
		MEETS {
			Visit_POI_120();
		}

		VALUE Move_POI_113_POI_123() [1, 1]
		MEETS {
			Visit_POI_123();
		}

		VALUE Move_POI_113_POI_122() [7, 11]
		MEETS {
			Visit_POI_122();
		}

		VALUE Move_POI_113_POI_125() [5, 7]
		MEETS {
			Visit_POI_125();
		}

		VALUE Move_POI_113_POI_124() [2, 4]
		MEETS {
			Visit_POI_124();
		}

		VALUE Move_POI_113_POI_116() [4, 6]
		MEETS {
			Visit_POI_116();
		}

		VALUE Move_POI_113_POI_115() [2, 4]
		MEETS {
			Visit_POI_115();
		}

		VALUE Move_POI_113_POI_118() [5, 7]
		MEETS {
			Visit_POI_118();
		}

		VALUE Move_POI_113_POI_117() [7, 11]
		MEETS {
			Visit_POI_117();
		}

		VALUE Move_POI_113_POI_119() [2, 2]
		MEETS {
			Visit_POI_119();
		}

		VALUE Visit_POI_127() [96, 144]
		MEETS {
			Move_POI_127_POI_130();
			Move_POI_127_POI_110();
			Move_POI_127_POI_132();
			Move_POI_127_POI_131();
			Move_POI_127_POI_112();
			Move_POI_127_POI_111();
			Move_POI_127_POI_114();
			Move_POI_127_POI_113();
			Move_POI_127_POI_126();
			Move_POI_127_POI_129();
			Move_POI_127_POI_128();
			Move_POI_127_POI_109();
			Move_POI_127_POI_108();
			Move_POI_127_POI_121();
			Move_POI_127_POI_120();
			Move_POI_127_POI_123();
			Move_POI_127_POI_122();
			Move_POI_127_POI_125();
			Move_POI_127_POI_124();
			Move_POI_127_POI_116();
			Move_POI_127_POI_115();
			Move_POI_127_POI_118();
			Move_POI_127_POI_117();
			Move_POI_127_POI_119();
			Finish();
		}

		VALUE Move_POI_127_POI_130() [2, 2]
		MEETS {
			Visit_POI_130();
		}

		VALUE Move_POI_127_POI_110() [7, 11]
		MEETS {
			Visit_POI_110();
		}

		VALUE Move_POI_127_POI_132() [2, 4]
		MEETS {
			Visit_POI_132();
		}

		VALUE Move_POI_127_POI_131() [5, 7]
		MEETS {
			Visit_POI_131();
		}

		VALUE Move_POI_127_POI_112() [2, 2]
		MEETS {
			Visit_POI_112();
		}

		VALUE Move_POI_127_POI_111() [2, 4]
		MEETS {
			Visit_POI_111();
		}

		VALUE Move_POI_127_POI_114() [1, 1]
		MEETS {
			Visit_POI_114();
		}

		VALUE Move_POI_127_POI_113() [6, 10]
		MEETS {
			Visit_POI_113();
		}

		VALUE Move_POI_127_POI_126() [2, 4]
		MEETS {
			Visit_POI_126();
		}

		VALUE Move_POI_127_POI_129() [3, 5]
		MEETS {
			Visit_POI_129();
		}

		VALUE Move_POI_127_POI_128() [1, 1]
		MEETS {
			Visit_POI_128();
		}

		VALUE Move_POI_127_POI_109() [6, 10]
		MEETS {
			Visit_POI_109();
		}

		VALUE Move_POI_127_POI_108() [1, 1]
		MEETS {
			Visit_POI_108();
		}

		VALUE Move_POI_127_POI_121() [4, 6]
		MEETS {
			Visit_POI_121();
		}

		VALUE Move_POI_127_POI_120() [4, 6]
		MEETS {
			Visit_POI_120();
		}

		VALUE Move_POI_127_POI_123() [6, 8]
		MEETS {
			Visit_POI_123();
		}

		VALUE Move_POI_127_POI_122() [5, 7]
		MEETS {
			Visit_POI_122();
		}

		VALUE Move_POI_127_POI_125() [7, 11]
		MEETS {
			Visit_POI_125();
		}

		VALUE Move_POI_127_POI_124() [2, 2]
		MEETS {
			Visit_POI_124();
		}

		VALUE Move_POI_127_POI_116() [6, 8]
		MEETS {
			Visit_POI_116();
		}

		VALUE Move_POI_127_POI_115() [2, 2]
		MEETS {
			Visit_POI_115();
		}

		VALUE Move_POI_127_POI_118() [5, 7]
		MEETS {
			Visit_POI_118();
		}

		VALUE Move_POI_127_POI_117() [2, 2]
		MEETS {
			Visit_POI_117();
		}

		VALUE Move_POI_127_POI_119() [1, 1]
		MEETS {
			Visit_POI_119();
		}

		VALUE Visit_POI_126() [16, 24]
		MEETS {
			Move_POI_126_POI_130();
			Move_POI_126_POI_110();
			Move_POI_126_POI_132();
			Move_POI_126_POI_131();
			Move_POI_126_POI_112();
			Move_POI_126_POI_111();
			Move_POI_126_POI_114();
			Move_POI_126_POI_113();
			Move_POI_126_POI_127();
			Move_POI_126_POI_129();
			Move_POI_126_POI_128();
			Move_POI_126_POI_109();
			Move_POI_126_POI_108();
			Move_POI_126_POI_121();
			Move_POI_126_POI_120();
			Move_POI_126_POI_123();
			Move_POI_126_POI_122();
			Move_POI_126_POI_125();
			Move_POI_126_POI_124();
			Move_POI_126_POI_116();
			Move_POI_126_POI_115();
			Move_POI_126_POI_118();
			Move_POI_126_POI_117();
			Move_POI_126_POI_119();
			Finish();
		}

		VALUE Move_POI_126_POI_130() [2, 2]
		MEETS {
			Visit_POI_130();
		}

		VALUE Move_POI_126_POI_110() [6, 10]
		MEETS {
			Visit_POI_110();
		}

		VALUE Move_POI_126_POI_132() [2, 4]
		MEETS {
			Visit_POI_132();
		}

		VALUE Move_POI_126_POI_131() [6, 8]
		MEETS {
			Visit_POI_131();
		}

		VALUE Move_POI_126_POI_112() [4, 6]
		MEETS {
			Visit_POI_112();
		}

		VALUE Move_POI_126_POI_111() [5, 7]
		MEETS {
			Visit_POI_111();
		}

		VALUE Move_POI_126_POI_114() [5, 7]
		MEETS {
			Visit_POI_114();
		}

		VALUE Move_POI_126_POI_113() [7, 11]
		MEETS {
			Visit_POI_113();
		}

		VALUE Move_POI_126_POI_127() [7, 11]
		MEETS {
			Visit_POI_127();
		}

		VALUE Move_POI_126_POI_129() [7, 11]
		MEETS {
			Visit_POI_129();
		}

		VALUE Move_POI_126_POI_128() [1, 1]
		MEETS {
			Visit_POI_128();
		}

		VALUE Move_POI_126_POI_109() [1, 1]
		MEETS {
			Visit_POI_109();
		}

		VALUE Move_POI_126_POI_108() [2, 2]
		MEETS {
			Visit_POI_108();
		}

		VALUE Move_POI_126_POI_121() [6, 8]
		MEETS {
			Visit_POI_121();
		}

		VALUE Move_POI_126_POI_120() [4, 6]
		MEETS {
			Visit_POI_120();
		}

		VALUE Move_POI_126_POI_123() [2, 2]
		MEETS {
			Visit_POI_123();
		}

		VALUE Move_POI_126_POI_122() [4, 6]
		MEETS {
			Visit_POI_122();
		}

		VALUE Move_POI_126_POI_125() [2, 2]
		MEETS {
			Visit_POI_125();
		}

		VALUE Move_POI_126_POI_124() [4, 6]
		MEETS {
			Visit_POI_124();
		}

		VALUE Move_POI_126_POI_116() [6, 8]
		MEETS {
			Visit_POI_116();
		}

		VALUE Move_POI_126_POI_115() [1, 1]
		MEETS {
			Visit_POI_115();
		}

		VALUE Move_POI_126_POI_118() [1, 1]
		MEETS {
			Visit_POI_118();
		}

		VALUE Move_POI_126_POI_117() [2, 2]
		MEETS {
			Visit_POI_117();
		}

		VALUE Move_POI_126_POI_119() [1, 1]
		MEETS {
			Visit_POI_119();
		}

		VALUE Visit_POI_129() [16, 24]
		MEETS {
			Move_POI_129_POI_130();
			Move_POI_129_POI_110();
			Move_POI_129_POI_132();
			Move_POI_129_POI_131();
			Move_POI_129_POI_112();
			Move_POI_129_POI_111();
			Move_POI_129_POI_114();
			Move_POI_129_POI_113();
			Move_POI_129_POI_127();
			Move_POI_129_POI_126();
			Move_POI_129_POI_128();
			Move_POI_129_POI_109();
			Move_POI_129_POI_108();
			Move_POI_129_POI_121();
			Move_POI_129_POI_120();
			Move_POI_129_POI_123();
			Move_POI_129_POI_122();
			Move_POI_129_POI_125();
			Move_POI_129_POI_124();
			Move_POI_129_POI_116();
			Move_POI_129_POI_115();
			Move_POI_129_POI_118();
			Move_POI_129_POI_117();
			Move_POI_129_POI_119();
			Finish();
		}

		VALUE Move_POI_129_POI_130() [1, 1]
		MEETS {
			Visit_POI_130();
		}

		VALUE Move_POI_129_POI_110() [5, 7]
		MEETS {
			Visit_POI_110();
		}

		VALUE Move_POI_129_POI_132() [1, 1]
		MEETS {
			Visit_POI_132();
		}

		VALUE Move_POI_129_POI_131() [7, 11]
		MEETS {
			Visit_POI_131();
		}

		VALUE Move_POI_129_POI_112() [1, 1]
		MEETS {
			Visit_POI_112();
		}

		VALUE Move_POI_129_POI_111() [7, 11]
		MEETS {
			Visit_POI_111();
		}

		VALUE Move_POI_129_POI_114() [6, 10]
		MEETS {
			Visit_POI_114();
		}

		VALUE Move_POI_129_POI_113() [1, 1]
		MEETS {
			Visit_POI_113();
		}

		VALUE Move_POI_129_POI_127() [5, 7]
		MEETS {
			Visit_POI_127();
		}

		VALUE Move_POI_129_POI_126() [4, 6]
		MEETS {
			Visit_POI_126();
		}

		VALUE Move_POI_129_POI_128() [2, 2]
		MEETS {
			Visit_POI_128();
		}

		VALUE Move_POI_129_POI_109() [6, 10]
		MEETS {
			Visit_POI_109();
		}

		VALUE Move_POI_129_POI_108() [2, 2]
		MEETS {
			Visit_POI_108();
		}

		VALUE Move_POI_129_POI_121() [2, 2]
		MEETS {
			Visit_POI_121();
		}

		VALUE Move_POI_129_POI_120() [5, 7]
		MEETS {
			Visit_POI_120();
		}

		VALUE Move_POI_129_POI_123() [3, 5]
		MEETS {
			Visit_POI_123();
		}

		VALUE Move_POI_129_POI_122() [2, 2]
		MEETS {
			Visit_POI_122();
		}

		VALUE Move_POI_129_POI_125() [5, 7]
		MEETS {
			Visit_POI_125();
		}

		VALUE Move_POI_129_POI_124() [7, 11]
		MEETS {
			Visit_POI_124();
		}

		VALUE Move_POI_129_POI_116() [4, 6]
		MEETS {
			Visit_POI_116();
		}

		VALUE Move_POI_129_POI_115() [6, 10]
		MEETS {
			Visit_POI_115();
		}

		VALUE Move_POI_129_POI_118() [6, 8]
		MEETS {
			Visit_POI_118();
		}

		VALUE Move_POI_129_POI_117() [2, 2]
		MEETS {
			Visit_POI_117();
		}

		VALUE Move_POI_129_POI_119() [4, 6]
		MEETS {
			Visit_POI_119();
		}

		VALUE Visit_POI_128() [24, 36]
		MEETS {
			Move_POI_128_POI_130();
			Move_POI_128_POI_110();
			Move_POI_128_POI_132();
			Move_POI_128_POI_131();
			Move_POI_128_POI_112();
			Move_POI_128_POI_111();
			Move_POI_128_POI_114();
			Move_POI_128_POI_113();
			Move_POI_128_POI_127();
			Move_POI_128_POI_126();
			Move_POI_128_POI_129();
			Move_POI_128_POI_109();
			Move_POI_128_POI_108();
			Move_POI_128_POI_121();
			Move_POI_128_POI_120();
			Move_POI_128_POI_123();
			Move_POI_128_POI_122();
			Move_POI_128_POI_125();
			Move_POI_128_POI_124();
			Move_POI_128_POI_116();
			Move_POI_128_POI_115();
			Move_POI_128_POI_118();
			Move_POI_128_POI_117();
			Move_POI_128_POI_119();
			Finish();
		}

		VALUE Move_POI_128_POI_130() [6, 10]
		MEETS {
			Visit_POI_130();
		}

		VALUE Move_POI_128_POI_110() [6, 8]
		MEETS {
			Visit_POI_110();
		}

		VALUE Move_POI_128_POI_132() [6, 8]
		MEETS {
			Visit_POI_132();
		}

		VALUE Move_POI_128_POI_131() [1, 1]
		MEETS {
			Visit_POI_131();
		}

		VALUE Move_POI_128_POI_112() [2, 2]
		MEETS {
			Visit_POI_112();
		}

		VALUE Move_POI_128_POI_111() [3, 5]
		MEETS {
			Visit_POI_111();
		}

		VALUE Move_POI_128_POI_114() [2, 4]
		MEETS {
			Visit_POI_114();
		}

		VALUE Move_POI_128_POI_113() [2, 2]
		MEETS {
			Visit_POI_113();
		}

		VALUE Move_POI_128_POI_127() [6, 8]
		MEETS {
			Visit_POI_127();
		}

		VALUE Move_POI_128_POI_126() [4, 6]
		MEETS {
			Visit_POI_126();
		}

		VALUE Move_POI_128_POI_129() [7, 11]
		MEETS {
			Visit_POI_129();
		}

		VALUE Move_POI_128_POI_109() [6, 10]
		MEETS {
			Visit_POI_109();
		}

		VALUE Move_POI_128_POI_108() [6, 8]
		MEETS {
			Visit_POI_108();
		}

		VALUE Move_POI_128_POI_121() [2, 2]
		MEETS {
			Visit_POI_121();
		}

		VALUE Move_POI_128_POI_120() [6, 8]
		MEETS {
			Visit_POI_120();
		}

		VALUE Move_POI_128_POI_123() [6, 8]
		MEETS {
			Visit_POI_123();
		}

		VALUE Move_POI_128_POI_122() [1, 1]
		MEETS {
			Visit_POI_122();
		}

		VALUE Move_POI_128_POI_125() [5, 7]
		MEETS {
			Visit_POI_125();
		}

		VALUE Move_POI_128_POI_124() [4, 6]
		MEETS {
			Visit_POI_124();
		}

		VALUE Move_POI_128_POI_116() [1, 1]
		MEETS {
			Visit_POI_116();
		}

		VALUE Move_POI_128_POI_115() [3, 5]
		MEETS {
			Visit_POI_115();
		}

		VALUE Move_POI_128_POI_118() [6, 10]
		MEETS {
			Visit_POI_118();
		}

		VALUE Move_POI_128_POI_117() [7, 11]
		MEETS {
			Visit_POI_117();
		}

		VALUE Move_POI_128_POI_119() [4, 6]
		MEETS {
			Visit_POI_119();
		}

		VALUE Visit_POI_109() [48, 72]
		MEETS {
			Move_POI_109_POI_130();
			Move_POI_109_POI_110();
			Move_POI_109_POI_132();
			Move_POI_109_POI_131();
			Move_POI_109_POI_112();
			Move_POI_109_POI_111();
			Move_POI_109_POI_114();
			Move_POI_109_POI_113();
			Move_POI_109_POI_127();
			Move_POI_109_POI_126();
			Move_POI_109_POI_129();
			Move_POI_109_POI_128();
			Move_POI_109_POI_108();
			Move_POI_109_POI_121();
			Move_POI_109_POI_120();
			Move_POI_109_POI_123();
			Move_POI_109_POI_122();
			Move_POI_109_POI_125();
			Move_POI_109_POI_124();
			Move_POI_109_POI_116();
			Move_POI_109_POI_115();
			Move_POI_109_POI_118();
			Move_POI_109_POI_117();
			Move_POI_109_POI_119();
			Finish();
		}

		VALUE Move_POI_109_POI_130() [7, 11]
		MEETS {
			Visit_POI_130();
		}

		VALUE Move_POI_109_POI_110() [6, 10]
		MEETS {
			Visit_POI_110();
		}

		VALUE Move_POI_109_POI_132() [3, 5]
		MEETS {
			Visit_POI_132();
		}

		VALUE Move_POI_109_POI_131() [1, 1]
		MEETS {
			Visit_POI_131();
		}

		VALUE Move_POI_109_POI_112() [2, 4]
		MEETS {
			Visit_POI_112();
		}

		VALUE Move_POI_109_POI_111() [6, 10]
		MEETS {
			Visit_POI_111();
		}

		VALUE Move_POI_109_POI_114() [2, 4]
		MEETS {
			Visit_POI_114();
		}

		VALUE Move_POI_109_POI_113() [2, 4]
		MEETS {
			Visit_POI_113();
		}

		VALUE Move_POI_109_POI_127() [2, 2]
		MEETS {
			Visit_POI_127();
		}

		VALUE Move_POI_109_POI_126() [1, 1]
		MEETS {
			Visit_POI_126();
		}

		VALUE Move_POI_109_POI_129() [7, 11]
		MEETS {
			Visit_POI_129();
		}

		VALUE Move_POI_109_POI_128() [7, 11]
		MEETS {
			Visit_POI_128();
		}

		VALUE Move_POI_109_POI_108() [1, 1]
		MEETS {
			Visit_POI_108();
		}

		VALUE Move_POI_109_POI_121() [6, 8]
		MEETS {
			Visit_POI_121();
		}

		VALUE Move_POI_109_POI_120() [6, 8]
		MEETS {
			Visit_POI_120();
		}

		VALUE Move_POI_109_POI_123() [5, 7]
		MEETS {
			Visit_POI_123();
		}

		VALUE Move_POI_109_POI_122() [6, 10]
		MEETS {
			Visit_POI_122();
		}

		VALUE Move_POI_109_POI_125() [2, 4]
		MEETS {
			Visit_POI_125();
		}

		VALUE Move_POI_109_POI_124() [6, 10]
		MEETS {
			Visit_POI_124();
		}

		VALUE Move_POI_109_POI_116() [7, 11]
		MEETS {
			Visit_POI_116();
		}

		VALUE Move_POI_109_POI_115() [4, 6]
		MEETS {
			Visit_POI_115();
		}

		VALUE Move_POI_109_POI_118() [3, 5]
		MEETS {
			Visit_POI_118();
		}

		VALUE Move_POI_109_POI_117() [4, 6]
		MEETS {
			Visit_POI_117();
		}

		VALUE Move_POI_109_POI_119() [1, 1]
		MEETS {
			Visit_POI_119();
		}

		VALUE Visit_POI_108() [24, 36]
		MEETS {
			Move_POI_108_POI_130();
			Move_POI_108_POI_110();
			Move_POI_108_POI_132();
			Move_POI_108_POI_131();
			Move_POI_108_POI_112();
			Move_POI_108_POI_111();
			Move_POI_108_POI_114();
			Move_POI_108_POI_113();
			Move_POI_108_POI_127();
			Move_POI_108_POI_126();
			Move_POI_108_POI_129();
			Move_POI_108_POI_128();
			Move_POI_108_POI_109();
			Move_POI_108_POI_121();
			Move_POI_108_POI_120();
			Move_POI_108_POI_123();
			Move_POI_108_POI_122();
			Move_POI_108_POI_125();
			Move_POI_108_POI_124();
			Move_POI_108_POI_116();
			Move_POI_108_POI_115();
			Move_POI_108_POI_118();
			Move_POI_108_POI_117();
			Move_POI_108_POI_119();
			Finish();
		}

		VALUE Move_POI_108_POI_130() [2, 4]
		MEETS {
			Visit_POI_130();
		}

		VALUE Move_POI_108_POI_110() [6, 8]
		MEETS {
			Visit_POI_110();
		}

		VALUE Move_POI_108_POI_132() [4, 6]
		MEETS {
			Visit_POI_132();
		}

		VALUE Move_POI_108_POI_131() [6, 8]
		MEETS {
			Visit_POI_131();
		}

		VALUE Move_POI_108_POI_112() [6, 8]
		MEETS {
			Visit_POI_112();
		}

		VALUE Move_POI_108_POI_111() [1, 1]
		MEETS {
			Visit_POI_111();
		}

		VALUE Move_POI_108_POI_114() [2, 4]
		MEETS {
			Visit_POI_114();
		}

		VALUE Move_POI_108_POI_113() [3, 5]
		MEETS {
			Visit_POI_113();
		}

		VALUE Move_POI_108_POI_127() [2, 4]
		MEETS {
			Visit_POI_127();
		}

		VALUE Move_POI_108_POI_126() [6, 10]
		MEETS {
			Visit_POI_126();
		}

		VALUE Move_POI_108_POI_129() [3, 5]
		MEETS {
			Visit_POI_129();
		}

		VALUE Move_POI_108_POI_128() [2, 2]
		MEETS {
			Visit_POI_128();
		}

		VALUE Move_POI_108_POI_109() [2, 2]
		MEETS {
			Visit_POI_109();
		}

		VALUE Move_POI_108_POI_121() [6, 8]
		MEETS {
			Visit_POI_121();
		}

		VALUE Move_POI_108_POI_120() [4, 6]
		MEETS {
			Visit_POI_120();
		}

		VALUE Move_POI_108_POI_123() [4, 6]
		MEETS {
			Visit_POI_123();
		}

		VALUE Move_POI_108_POI_122() [5, 7]
		MEETS {
			Visit_POI_122();
		}

		VALUE Move_POI_108_POI_125() [5, 7]
		MEETS {
			Visit_POI_125();
		}

		VALUE Move_POI_108_POI_124() [4, 6]
		MEETS {
			Visit_POI_124();
		}

		VALUE Move_POI_108_POI_116() [6, 10]
		MEETS {
			Visit_POI_116();
		}

		VALUE Move_POI_108_POI_115() [6, 10]
		MEETS {
			Visit_POI_115();
		}

		VALUE Move_POI_108_POI_118() [1, 1]
		MEETS {
			Visit_POI_118();
		}

		VALUE Move_POI_108_POI_117() [6, 10]
		MEETS {
			Visit_POI_117();
		}

		VALUE Move_POI_108_POI_119() [7, 11]
		MEETS {
			Visit_POI_119();
		}

		VALUE Visit_POI_121() [8, 12]
		MEETS {
			Move_POI_121_POI_130();
			Move_POI_121_POI_110();
			Move_POI_121_POI_132();
			Move_POI_121_POI_131();
			Move_POI_121_POI_112();
			Move_POI_121_POI_111();
			Move_POI_121_POI_114();
			Move_POI_121_POI_113();
			Move_POI_121_POI_127();
			Move_POI_121_POI_126();
			Move_POI_121_POI_129();
			Move_POI_121_POI_128();
			Move_POI_121_POI_109();
			Move_POI_121_POI_108();
			Move_POI_121_POI_120();
			Move_POI_121_POI_123();
			Move_POI_121_POI_122();
			Move_POI_121_POI_125();
			Move_POI_121_POI_124();
			Move_POI_121_POI_116();
			Move_POI_121_POI_115();
			Move_POI_121_POI_118();
			Move_POI_121_POI_117();
			Move_POI_121_POI_119();
			Finish();
		}

		VALUE Move_POI_121_POI_130() [5, 7]
		MEETS {
			Visit_POI_130();
		}

		VALUE Move_POI_121_POI_110() [1, 1]
		MEETS {
			Visit_POI_110();
		}

		VALUE Move_POI_121_POI_132() [4, 6]
		MEETS {
			Visit_POI_132();
		}

		VALUE Move_POI_121_POI_131() [7, 11]
		MEETS {
			Visit_POI_131();
		}

		VALUE Move_POI_121_POI_112() [6, 8]
		MEETS {
			Visit_POI_112();
		}

		VALUE Move_POI_121_POI_111() [4, 6]
		MEETS {
			Visit_POI_111();
		}

		VALUE Move_POI_121_POI_114() [2, 4]
		MEETS {
			Visit_POI_114();
		}

		VALUE Move_POI_121_POI_113() [1, 1]
		MEETS {
			Visit_POI_113();
		}

		VALUE Move_POI_121_POI_127() [1, 1]
		MEETS {
			Visit_POI_127();
		}

		VALUE Move_POI_121_POI_126() [6, 8]
		MEETS {
			Visit_POI_126();
		}

		VALUE Move_POI_121_POI_129() [7, 11]
		MEETS {
			Visit_POI_129();
		}

		VALUE Move_POI_121_POI_128() [7, 11]
		MEETS {
			Visit_POI_128();
		}

		VALUE Move_POI_121_POI_109() [2, 2]
		MEETS {
			Visit_POI_109();
		}

		VALUE Move_POI_121_POI_108() [2, 2]
		MEETS {
			Visit_POI_108();
		}

		VALUE Move_POI_121_POI_120() [5, 7]
		MEETS {
			Visit_POI_120();
		}

		VALUE Move_POI_121_POI_123() [5, 7]
		MEETS {
			Visit_POI_123();
		}

		VALUE Move_POI_121_POI_122() [5, 7]
		MEETS {
			Visit_POI_122();
		}

		VALUE Move_POI_121_POI_125() [2, 2]
		MEETS {
			Visit_POI_125();
		}

		VALUE Move_POI_121_POI_124() [6, 8]
		MEETS {
			Visit_POI_124();
		}

		VALUE Move_POI_121_POI_116() [1, 1]
		MEETS {
			Visit_POI_116();
		}

		VALUE Move_POI_121_POI_115() [3, 5]
		MEETS {
			Visit_POI_115();
		}

		VALUE Move_POI_121_POI_118() [6, 8]
		MEETS {
			Visit_POI_118();
		}

		VALUE Move_POI_121_POI_117() [3, 5]
		MEETS {
			Visit_POI_117();
		}

		VALUE Move_POI_121_POI_119() [6, 8]
		MEETS {
			Visit_POI_119();
		}

		VALUE Visit_POI_120() [24, 36]
		MEETS {
			Move_POI_120_POI_130();
			Move_POI_120_POI_110();
			Move_POI_120_POI_132();
			Move_POI_120_POI_131();
			Move_POI_120_POI_112();
			Move_POI_120_POI_111();
			Move_POI_120_POI_114();
			Move_POI_120_POI_113();
			Move_POI_120_POI_127();
			Move_POI_120_POI_126();
			Move_POI_120_POI_129();
			Move_POI_120_POI_128();
			Move_POI_120_POI_109();
			Move_POI_120_POI_108();
			Move_POI_120_POI_121();
			Move_POI_120_POI_123();
			Move_POI_120_POI_122();
			Move_POI_120_POI_125();
			Move_POI_120_POI_124();
			Move_POI_120_POI_116();
			Move_POI_120_POI_115();
			Move_POI_120_POI_118();
			Move_POI_120_POI_117();
			Move_POI_120_POI_119();
			Finish();
		}

		VALUE Move_POI_120_POI_130() [5, 7]
		MEETS {
			Visit_POI_130();
		}

		VALUE Move_POI_120_POI_110() [4, 6]
		MEETS {
			Visit_POI_110();
		}

		VALUE Move_POI_120_POI_132() [2, 2]
		MEETS {
			Visit_POI_132();
		}

		VALUE Move_POI_120_POI_131() [1, 1]
		MEETS {
			Visit_POI_131();
		}

		VALUE Move_POI_120_POI_112() [4, 6]
		MEETS {
			Visit_POI_112();
		}

		VALUE Move_POI_120_POI_111() [5, 7]
		MEETS {
			Visit_POI_111();
		}

		VALUE Move_POI_120_POI_114() [7, 11]
		MEETS {
			Visit_POI_114();
		}

		VALUE Move_POI_120_POI_113() [1, 1]
		MEETS {
			Visit_POI_113();
		}

		VALUE Move_POI_120_POI_127() [2, 2]
		MEETS {
			Visit_POI_127();
		}

		VALUE Move_POI_120_POI_126() [1, 1]
		MEETS {
			Visit_POI_126();
		}

		VALUE Move_POI_120_POI_129() [2, 4]
		MEETS {
			Visit_POI_129();
		}

		VALUE Move_POI_120_POI_128() [1, 1]
		MEETS {
			Visit_POI_128();
		}

		VALUE Move_POI_120_POI_109() [6, 8]
		MEETS {
			Visit_POI_109();
		}

		VALUE Move_POI_120_POI_108() [6, 8]
		MEETS {
			Visit_POI_108();
		}

		VALUE Move_POI_120_POI_121() [6, 8]
		MEETS {
			Visit_POI_121();
		}

		VALUE Move_POI_120_POI_123() [4, 6]
		MEETS {
			Visit_POI_123();
		}

		VALUE Move_POI_120_POI_122() [7, 11]
		MEETS {
			Visit_POI_122();
		}

		VALUE Move_POI_120_POI_125() [7, 11]
		MEETS {
			Visit_POI_125();
		}

		VALUE Move_POI_120_POI_124() [7, 11]
		MEETS {
			Visit_POI_124();
		}

		VALUE Move_POI_120_POI_116() [3, 5]
		MEETS {
			Visit_POI_116();
		}

		VALUE Move_POI_120_POI_115() [7, 11]
		MEETS {
			Visit_POI_115();
		}

		VALUE Move_POI_120_POI_118() [7, 11]
		MEETS {
			Visit_POI_118();
		}

		VALUE Move_POI_120_POI_117() [5, 7]
		MEETS {
			Visit_POI_117();
		}

		VALUE Move_POI_120_POI_119() [1, 1]
		MEETS {
			Visit_POI_119();
		}

		VALUE Visit_POI_123() [8, 12]
		MEETS {
			Move_POI_123_POI_130();
			Move_POI_123_POI_110();
			Move_POI_123_POI_132();
			Move_POI_123_POI_131();
			Move_POI_123_POI_112();
			Move_POI_123_POI_111();
			Move_POI_123_POI_114();
			Move_POI_123_POI_113();
			Move_POI_123_POI_127();
			Move_POI_123_POI_126();
			Move_POI_123_POI_129();
			Move_POI_123_POI_128();
			Move_POI_123_POI_109();
			Move_POI_123_POI_108();
			Move_POI_123_POI_121();
			Move_POI_123_POI_120();
			Move_POI_123_POI_122();
			Move_POI_123_POI_125();
			Move_POI_123_POI_124();
			Move_POI_123_POI_116();
			Move_POI_123_POI_115();
			Move_POI_123_POI_118();
			Move_POI_123_POI_117();
			Move_POI_123_POI_119();
			Finish();
		}

		VALUE Move_POI_123_POI_130() [7, 11]
		MEETS {
			Visit_POI_130();
		}

		VALUE Move_POI_123_POI_110() [6, 10]
		MEETS {
			Visit_POI_110();
		}

		VALUE Move_POI_123_POI_132() [6, 10]
		MEETS {
			Visit_POI_132();
		}

		VALUE Move_POI_123_POI_131() [4, 6]
		MEETS {
			Visit_POI_131();
		}

		VALUE Move_POI_123_POI_112() [2, 2]
		MEETS {
			Visit_POI_112();
		}

		VALUE Move_POI_123_POI_111() [6, 10]
		MEETS {
			Visit_POI_111();
		}

		VALUE Move_POI_123_POI_114() [7, 11]
		MEETS {
			Visit_POI_114();
		}

		VALUE Move_POI_123_POI_113() [2, 2]
		MEETS {
			Visit_POI_113();
		}

		VALUE Move_POI_123_POI_127() [3, 5]
		MEETS {
			Visit_POI_127();
		}

		VALUE Move_POI_123_POI_126() [2, 2]
		MEETS {
			Visit_POI_126();
		}

		VALUE Move_POI_123_POI_129() [4, 6]
		MEETS {
			Visit_POI_129();
		}

		VALUE Move_POI_123_POI_128() [2, 2]
		MEETS {
			Visit_POI_128();
		}

		VALUE Move_POI_123_POI_109() [1, 1]
		MEETS {
			Visit_POI_109();
		}

		VALUE Move_POI_123_POI_108() [2, 2]
		MEETS {
			Visit_POI_108();
		}

		VALUE Move_POI_123_POI_121() [6, 8]
		MEETS {
			Visit_POI_121();
		}

		VALUE Move_POI_123_POI_120() [7, 11]
		MEETS {
			Visit_POI_120();
		}

		VALUE Move_POI_123_POI_122() [6, 10]
		MEETS {
			Visit_POI_122();
		}

		VALUE Move_POI_123_POI_125() [5, 7]
		MEETS {
			Visit_POI_125();
		}

		VALUE Move_POI_123_POI_124() [4, 6]
		MEETS {
			Visit_POI_124();
		}

		VALUE Move_POI_123_POI_116() [2, 2]
		MEETS {
			Visit_POI_116();
		}

		VALUE Move_POI_123_POI_115() [2, 2]
		MEETS {
			Visit_POI_115();
		}

		VALUE Move_POI_123_POI_118() [4, 6]
		MEETS {
			Visit_POI_118();
		}

		VALUE Move_POI_123_POI_117() [5, 7]
		MEETS {
			Visit_POI_117();
		}

		VALUE Move_POI_123_POI_119() [7, 11]
		MEETS {
			Visit_POI_119();
		}

		VALUE Visit_POI_122() [1, 1]
		MEETS {
			Move_POI_122_POI_130();
			Move_POI_122_POI_110();
			Move_POI_122_POI_132();
			Move_POI_122_POI_131();
			Move_POI_122_POI_112();
			Move_POI_122_POI_111();
			Move_POI_122_POI_114();
			Move_POI_122_POI_113();
			Move_POI_122_POI_127();
			Move_POI_122_POI_126();
			Move_POI_122_POI_129();
			Move_POI_122_POI_128();
			Move_POI_122_POI_109();
			Move_POI_122_POI_108();
			Move_POI_122_POI_121();
			Move_POI_122_POI_120();
			Move_POI_122_POI_123();
			Move_POI_122_POI_125();
			Move_POI_122_POI_124();
			Move_POI_122_POI_116();
			Move_POI_122_POI_115();
			Move_POI_122_POI_118();
			Move_POI_122_POI_117();
			Move_POI_122_POI_119();
			Finish();
		}

		VALUE Move_POI_122_POI_130() [3, 5]
		MEETS {
			Visit_POI_130();
		}

		VALUE Move_POI_122_POI_110() [5, 7]
		MEETS {
			Visit_POI_110();
		}

		VALUE Move_POI_122_POI_132() [1, 1]
		MEETS {
			Visit_POI_132();
		}

		VALUE Move_POI_122_POI_131() [2, 4]
		MEETS {
			Visit_POI_131();
		}

		VALUE Move_POI_122_POI_112() [5, 7]
		MEETS {
			Visit_POI_112();
		}

		VALUE Move_POI_122_POI_111() [7, 11]
		MEETS {
			Visit_POI_111();
		}

		VALUE Move_POI_122_POI_114() [6, 8]
		MEETS {
			Visit_POI_114();
		}

		VALUE Move_POI_122_POI_113() [6, 8]
		MEETS {
			Visit_POI_113();
		}

		VALUE Move_POI_122_POI_127() [2, 4]
		MEETS {
			Visit_POI_127();
		}

		VALUE Move_POI_122_POI_126() [4, 6]
		MEETS {
			Visit_POI_126();
		}

		VALUE Move_POI_122_POI_129() [6, 10]
		MEETS {
			Visit_POI_129();
		}

		VALUE Move_POI_122_POI_128() [3, 5]
		MEETS {
			Visit_POI_128();
		}

		VALUE Move_POI_122_POI_109() [6, 8]
		MEETS {
			Visit_POI_109();
		}

		VALUE Move_POI_122_POI_108() [3, 5]
		MEETS {
			Visit_POI_108();
		}

		VALUE Move_POI_122_POI_121() [6, 8]
		MEETS {
			Visit_POI_121();
		}

		VALUE Move_POI_122_POI_120() [7, 11]
		MEETS {
			Visit_POI_120();
		}

		VALUE Move_POI_122_POI_123() [2, 2]
		MEETS {
			Visit_POI_123();
		}

		VALUE Move_POI_122_POI_125() [4, 6]
		MEETS {
			Visit_POI_125();
		}

		VALUE Move_POI_122_POI_124() [2, 2]
		MEETS {
			Visit_POI_124();
		}

		VALUE Move_POI_122_POI_116() [2, 2]
		MEETS {
			Visit_POI_116();
		}

		VALUE Move_POI_122_POI_115() [6, 10]
		MEETS {
			Visit_POI_115();
		}

		VALUE Move_POI_122_POI_118() [7, 11]
		MEETS {
			Visit_POI_118();
		}

		VALUE Move_POI_122_POI_117() [7, 11]
		MEETS {
			Visit_POI_117();
		}

		VALUE Move_POI_122_POI_119() [6, 10]
		MEETS {
			Visit_POI_119();
		}

		VALUE Visit_POI_125() [24, 36]
		MEETS {
			Move_POI_125_POI_130();
			Move_POI_125_POI_110();
			Move_POI_125_POI_132();
			Move_POI_125_POI_131();
			Move_POI_125_POI_112();
			Move_POI_125_POI_111();
			Move_POI_125_POI_114();
			Move_POI_125_POI_113();
			Move_POI_125_POI_127();
			Move_POI_125_POI_126();
			Move_POI_125_POI_129();
			Move_POI_125_POI_128();
			Move_POI_125_POI_109();
			Move_POI_125_POI_108();
			Move_POI_125_POI_121();
			Move_POI_125_POI_120();
			Move_POI_125_POI_123();
			Move_POI_125_POI_122();
			Move_POI_125_POI_124();
			Move_POI_125_POI_116();
			Move_POI_125_POI_115();
			Move_POI_125_POI_118();
			Move_POI_125_POI_117();
			Move_POI_125_POI_119();
			Finish();
		}

		VALUE Move_POI_125_POI_130() [7, 11]
		MEETS {
			Visit_POI_130();
		}

		VALUE Move_POI_125_POI_110() [6, 8]
		MEETS {
			Visit_POI_110();
		}

		VALUE Move_POI_125_POI_132() [5, 7]
		MEETS {
			Visit_POI_132();
		}

		VALUE Move_POI_125_POI_131() [6, 8]
		MEETS {
			Visit_POI_131();
		}

		VALUE Move_POI_125_POI_112() [2, 4]
		MEETS {
			Visit_POI_112();
		}

		VALUE Move_POI_125_POI_111() [1, 1]
		MEETS {
			Visit_POI_111();
		}

		VALUE Move_POI_125_POI_114() [6, 10]
		MEETS {
			Visit_POI_114();
		}

		VALUE Move_POI_125_POI_113() [2, 4]
		MEETS {
			Visit_POI_113();
		}

		VALUE Move_POI_125_POI_127() [6, 8]
		MEETS {
			Visit_POI_127();
		}

		VALUE Move_POI_125_POI_126() [2, 4]
		MEETS {
			Visit_POI_126();
		}

		VALUE Move_POI_125_POI_129() [4, 6]
		MEETS {
			Visit_POI_129();
		}

		VALUE Move_POI_125_POI_128() [3, 5]
		MEETS {
			Visit_POI_128();
		}

		VALUE Move_POI_125_POI_109() [7, 11]
		MEETS {
			Visit_POI_109();
		}

		VALUE Move_POI_125_POI_108() [7, 11]
		MEETS {
			Visit_POI_108();
		}

		VALUE Move_POI_125_POI_121() [2, 2]
		MEETS {
			Visit_POI_121();
		}

		VALUE Move_POI_125_POI_120() [4, 6]
		MEETS {
			Visit_POI_120();
		}

		VALUE Move_POI_125_POI_123() [6, 8]
		MEETS {
			Visit_POI_123();
		}

		VALUE Move_POI_125_POI_122() [6, 10]
		MEETS {
			Visit_POI_122();
		}

		VALUE Move_POI_125_POI_124() [1, 1]
		MEETS {
			Visit_POI_124();
		}

		VALUE Move_POI_125_POI_116() [6, 8]
		MEETS {
			Visit_POI_116();
		}

		VALUE Move_POI_125_POI_115() [5, 7]
		MEETS {
			Visit_POI_115();
		}

		VALUE Move_POI_125_POI_118() [6, 8]
		MEETS {
			Visit_POI_118();
		}

		VALUE Move_POI_125_POI_117() [1, 1]
		MEETS {
			Visit_POI_117();
		}

		VALUE Move_POI_125_POI_119() [3, 5]
		MEETS {
			Visit_POI_119();
		}

		VALUE Visit_POI_124() [24, 36]
		MEETS {
			Move_POI_124_POI_130();
			Move_POI_124_POI_110();
			Move_POI_124_POI_132();
			Move_POI_124_POI_131();
			Move_POI_124_POI_112();
			Move_POI_124_POI_111();
			Move_POI_124_POI_114();
			Move_POI_124_POI_113();
			Move_POI_124_POI_127();
			Move_POI_124_POI_126();
			Move_POI_124_POI_129();
			Move_POI_124_POI_128();
			Move_POI_124_POI_109();
			Move_POI_124_POI_108();
			Move_POI_124_POI_121();
			Move_POI_124_POI_120();
			Move_POI_124_POI_123();
			Move_POI_124_POI_122();
			Move_POI_124_POI_125();
			Move_POI_124_POI_116();
			Move_POI_124_POI_115();
			Move_POI_124_POI_118();
			Move_POI_124_POI_117();
			Move_POI_124_POI_119();
			Finish();
		}

		VALUE Move_POI_124_POI_130() [6, 8]
		MEETS {
			Visit_POI_130();
		}

		VALUE Move_POI_124_POI_110() [1, 1]
		MEETS {
			Visit_POI_110();
		}

		VALUE Move_POI_124_POI_132() [6, 8]
		MEETS {
			Visit_POI_132();
		}

		VALUE Move_POI_124_POI_131() [4, 6]
		MEETS {
			Visit_POI_131();
		}

		VALUE Move_POI_124_POI_112() [4, 6]
		MEETS {
			Visit_POI_112();
		}

		VALUE Move_POI_124_POI_111() [5, 7]
		MEETS {
			Visit_POI_111();
		}

		VALUE Move_POI_124_POI_114() [2, 4]
		MEETS {
			Visit_POI_114();
		}

		VALUE Move_POI_124_POI_113() [5, 7]
		MEETS {
			Visit_POI_113();
		}

		VALUE Move_POI_124_POI_127() [2, 2]
		MEETS {
			Visit_POI_127();
		}

		VALUE Move_POI_124_POI_126() [7, 11]
		MEETS {
			Visit_POI_126();
		}

		VALUE Move_POI_124_POI_129() [3, 5]
		MEETS {
			Visit_POI_129();
		}

		VALUE Move_POI_124_POI_128() [6, 10]
		MEETS {
			Visit_POI_128();
		}

		VALUE Move_POI_124_POI_109() [2, 2]
		MEETS {
			Visit_POI_109();
		}

		VALUE Move_POI_124_POI_108() [3, 5]
		MEETS {
			Visit_POI_108();
		}

		VALUE Move_POI_124_POI_121() [2, 4]
		MEETS {
			Visit_POI_121();
		}

		VALUE Move_POI_124_POI_120() [7, 11]
		MEETS {
			Visit_POI_120();
		}

		VALUE Move_POI_124_POI_123() [4, 6]
		MEETS {
			Visit_POI_123();
		}

		VALUE Move_POI_124_POI_122() [4, 6]
		MEETS {
			Visit_POI_122();
		}

		VALUE Move_POI_124_POI_125() [3, 5]
		MEETS {
			Visit_POI_125();
		}

		VALUE Move_POI_124_POI_116() [7, 11]
		MEETS {
			Visit_POI_116();
		}

		VALUE Move_POI_124_POI_115() [5, 7]
		MEETS {
			Visit_POI_115();
		}

		VALUE Move_POI_124_POI_118() [2, 2]
		MEETS {
			Visit_POI_118();
		}

		VALUE Move_POI_124_POI_117() [5, 7]
		MEETS {
			Visit_POI_117();
		}

		VALUE Move_POI_124_POI_119() [7, 11]
		MEETS {
			Visit_POI_119();
		}

		VALUE Visit_POI_116() [8, 12]
		MEETS {
			Move_POI_116_POI_130();
			Move_POI_116_POI_110();
			Move_POI_116_POI_132();
			Move_POI_116_POI_131();
			Move_POI_116_POI_112();
			Move_POI_116_POI_111();
			Move_POI_116_POI_114();
			Move_POI_116_POI_113();
			Move_POI_116_POI_127();
			Move_POI_116_POI_126();
			Move_POI_116_POI_129();
			Move_POI_116_POI_128();
			Move_POI_116_POI_109();
			Move_POI_116_POI_108();
			Move_POI_116_POI_121();
			Move_POI_116_POI_120();
			Move_POI_116_POI_123();
			Move_POI_116_POI_122();
			Move_POI_116_POI_125();
			Move_POI_116_POI_124();
			Move_POI_116_POI_115();
			Move_POI_116_POI_118();
			Move_POI_116_POI_117();
			Move_POI_116_POI_119();
			Finish();
		}

		VALUE Move_POI_116_POI_130() [4, 6]
		MEETS {
			Visit_POI_130();
		}

		VALUE Move_POI_116_POI_110() [2, 2]
		MEETS {
			Visit_POI_110();
		}

		VALUE Move_POI_116_POI_132() [7, 11]
		MEETS {
			Visit_POI_132();
		}

		VALUE Move_POI_116_POI_131() [2, 4]
		MEETS {
			Visit_POI_131();
		}

		VALUE Move_POI_116_POI_112() [6, 8]
		MEETS {
			Visit_POI_112();
		}

		VALUE Move_POI_116_POI_111() [7, 11]
		MEETS {
			Visit_POI_111();
		}

		VALUE Move_POI_116_POI_114() [6, 8]
		MEETS {
			Visit_POI_114();
		}

		VALUE Move_POI_116_POI_113() [7, 11]
		MEETS {
			Visit_POI_113();
		}

		VALUE Move_POI_116_POI_127() [7, 11]
		MEETS {
			Visit_POI_127();
		}

		VALUE Move_POI_116_POI_126() [1, 1]
		MEETS {
			Visit_POI_126();
		}

		VALUE Move_POI_116_POI_129() [2, 4]
		MEETS {
			Visit_POI_129();
		}

		VALUE Move_POI_116_POI_128() [3, 5]
		MEETS {
			Visit_POI_128();
		}

		VALUE Move_POI_116_POI_109() [5, 7]
		MEETS {
			Visit_POI_109();
		}

		VALUE Move_POI_116_POI_108() [2, 2]
		MEETS {
			Visit_POI_108();
		}

		VALUE Move_POI_116_POI_121() [1, 1]
		MEETS {
			Visit_POI_121();
		}

		VALUE Move_POI_116_POI_120() [3, 5]
		MEETS {
			Visit_POI_120();
		}

		VALUE Move_POI_116_POI_123() [5, 7]
		MEETS {
			Visit_POI_123();
		}

		VALUE Move_POI_116_POI_122() [2, 2]
		MEETS {
			Visit_POI_122();
		}

		VALUE Move_POI_116_POI_125() [6, 10]
		MEETS {
			Visit_POI_125();
		}

		VALUE Move_POI_116_POI_124() [5, 7]
		MEETS {
			Visit_POI_124();
		}

		VALUE Move_POI_116_POI_115() [7, 11]
		MEETS {
			Visit_POI_115();
		}

		VALUE Move_POI_116_POI_118() [7, 11]
		MEETS {
			Visit_POI_118();
		}

		VALUE Move_POI_116_POI_117() [6, 8]
		MEETS {
			Visit_POI_117();
		}

		VALUE Move_POI_116_POI_119() [6, 8]
		MEETS {
			Visit_POI_119();
		}

		VALUE Visit_POI_115() [16, 24]
		MEETS {
			Move_POI_115_POI_130();
			Move_POI_115_POI_110();
			Move_POI_115_POI_132();
			Move_POI_115_POI_131();
			Move_POI_115_POI_112();
			Move_POI_115_POI_111();
			Move_POI_115_POI_114();
			Move_POI_115_POI_113();
			Move_POI_115_POI_127();
			Move_POI_115_POI_126();
			Move_POI_115_POI_129();
			Move_POI_115_POI_128();
			Move_POI_115_POI_109();
			Move_POI_115_POI_108();
			Move_POI_115_POI_121();
			Move_POI_115_POI_120();
			Move_POI_115_POI_123();
			Move_POI_115_POI_122();
			Move_POI_115_POI_125();
			Move_POI_115_POI_124();
			Move_POI_115_POI_116();
			Move_POI_115_POI_118();
			Move_POI_115_POI_117();
			Move_POI_115_POI_119();
			Finish();
		}

		VALUE Move_POI_115_POI_130() [2, 2]
		MEETS {
			Visit_POI_130();
		}

		VALUE Move_POI_115_POI_110() [4, 6]
		MEETS {
			Visit_POI_110();
		}

		VALUE Move_POI_115_POI_132() [1, 1]
		MEETS {
			Visit_POI_132();
		}

		VALUE Move_POI_115_POI_131() [3, 5]
		MEETS {
			Visit_POI_131();
		}

		VALUE Move_POI_115_POI_112() [3, 5]
		MEETS {
			Visit_POI_112();
		}

		VALUE Move_POI_115_POI_111() [7, 11]
		MEETS {
			Visit_POI_111();
		}

		VALUE Move_POI_115_POI_114() [2, 2]
		MEETS {
			Visit_POI_114();
		}

		VALUE Move_POI_115_POI_113() [2, 4]
		MEETS {
			Visit_POI_113();
		}

		VALUE Move_POI_115_POI_127() [6, 8]
		MEETS {
			Visit_POI_127();
		}

		VALUE Move_POI_115_POI_126() [2, 4]
		MEETS {
			Visit_POI_126();
		}

		VALUE Move_POI_115_POI_129() [3, 5]
		MEETS {
			Visit_POI_129();
		}

		VALUE Move_POI_115_POI_128() [2, 4]
		MEETS {
			Visit_POI_128();
		}

		VALUE Move_POI_115_POI_109() [2, 4]
		MEETS {
			Visit_POI_109();
		}

		VALUE Move_POI_115_POI_108() [4, 6]
		MEETS {
			Visit_POI_108();
		}

		VALUE Move_POI_115_POI_121() [2, 2]
		MEETS {
			Visit_POI_121();
		}

		VALUE Move_POI_115_POI_120() [1, 1]
		MEETS {
			Visit_POI_120();
		}

		VALUE Move_POI_115_POI_123() [3, 5]
		MEETS {
			Visit_POI_123();
		}

		VALUE Move_POI_115_POI_122() [2, 4]
		MEETS {
			Visit_POI_122();
		}

		VALUE Move_POI_115_POI_125() [5, 7]
		MEETS {
			Visit_POI_125();
		}

		VALUE Move_POI_115_POI_124() [3, 5]
		MEETS {
			Visit_POI_124();
		}

		VALUE Move_POI_115_POI_116() [6, 10]
		MEETS {
			Visit_POI_116();
		}

		VALUE Move_POI_115_POI_118() [5, 7]
		MEETS {
			Visit_POI_118();
		}

		VALUE Move_POI_115_POI_117() [2, 2]
		MEETS {
			Visit_POI_117();
		}

		VALUE Move_POI_115_POI_119() [2, 2]
		MEETS {
			Visit_POI_119();
		}

		VALUE Visit_POI_118() [24, 36]
		MEETS {
			Move_POI_118_POI_130();
			Move_POI_118_POI_110();
			Move_POI_118_POI_132();
			Move_POI_118_POI_131();
			Move_POI_118_POI_112();
			Move_POI_118_POI_111();
			Move_POI_118_POI_114();
			Move_POI_118_POI_113();
			Move_POI_118_POI_127();
			Move_POI_118_POI_126();
			Move_POI_118_POI_129();
			Move_POI_118_POI_128();
			Move_POI_118_POI_109();
			Move_POI_118_POI_108();
			Move_POI_118_POI_121();
			Move_POI_118_POI_120();
			Move_POI_118_POI_123();
			Move_POI_118_POI_122();
			Move_POI_118_POI_125();
			Move_POI_118_POI_124();
			Move_POI_118_POI_116();
			Move_POI_118_POI_115();
			Move_POI_118_POI_117();
			Move_POI_118_POI_119();
			Finish();
		}

		VALUE Move_POI_118_POI_130() [6, 8]
		MEETS {
			Visit_POI_130();
		}

		VALUE Move_POI_118_POI_110() [6, 8]
		MEETS {
			Visit_POI_110();
		}

		VALUE Move_POI_118_POI_132() [3, 5]
		MEETS {
			Visit_POI_132();
		}

		VALUE Move_POI_118_POI_131() [2, 2]
		MEETS {
			Visit_POI_131();
		}

		VALUE Move_POI_118_POI_112() [2, 4]
		MEETS {
			Visit_POI_112();
		}

		VALUE Move_POI_118_POI_111() [7, 11]
		MEETS {
			Visit_POI_111();
		}

		VALUE Move_POI_118_POI_114() [6, 10]
		MEETS {
			Visit_POI_114();
		}

		VALUE Move_POI_118_POI_113() [7, 11]
		MEETS {
			Visit_POI_113();
		}

		VALUE Move_POI_118_POI_127() [4, 6]
		MEETS {
			Visit_POI_127();
		}

		VALUE Move_POI_118_POI_126() [3, 5]
		MEETS {
			Visit_POI_126();
		}

		VALUE Move_POI_118_POI_129() [5, 7]
		MEETS {
			Visit_POI_129();
		}

		VALUE Move_POI_118_POI_128() [7, 11]
		MEETS {
			Visit_POI_128();
		}

		VALUE Move_POI_118_POI_109() [5, 7]
		MEETS {
			Visit_POI_109();
		}

		VALUE Move_POI_118_POI_108() [1, 1]
		MEETS {
			Visit_POI_108();
		}

		VALUE Move_POI_118_POI_121() [6, 8]
		MEETS {
			Visit_POI_121();
		}

		VALUE Move_POI_118_POI_120() [5, 7]
		MEETS {
			Visit_POI_120();
		}

		VALUE Move_POI_118_POI_123() [2, 2]
		MEETS {
			Visit_POI_123();
		}

		VALUE Move_POI_118_POI_122() [5, 7]
		MEETS {
			Visit_POI_122();
		}

		VALUE Move_POI_118_POI_125() [4, 6]
		MEETS {
			Visit_POI_125();
		}

		VALUE Move_POI_118_POI_124() [6, 8]
		MEETS {
			Visit_POI_124();
		}

		VALUE Move_POI_118_POI_116() [4, 6]
		MEETS {
			Visit_POI_116();
		}

		VALUE Move_POI_118_POI_115() [2, 2]
		MEETS {
			Visit_POI_115();
		}

		VALUE Move_POI_118_POI_117() [6, 10]
		MEETS {
			Visit_POI_117();
		}

		VALUE Move_POI_118_POI_119() [6, 10]
		MEETS {
			Visit_POI_119();
		}

		VALUE Visit_POI_117() [1, 1]
		MEETS {
			Move_POI_117_POI_130();
			Move_POI_117_POI_110();
			Move_POI_117_POI_132();
			Move_POI_117_POI_131();
			Move_POI_117_POI_112();
			Move_POI_117_POI_111();
			Move_POI_117_POI_114();
			Move_POI_117_POI_113();
			Move_POI_117_POI_127();
			Move_POI_117_POI_126();
			Move_POI_117_POI_129();
			Move_POI_117_POI_128();
			Move_POI_117_POI_109();
			Move_POI_117_POI_108();
			Move_POI_117_POI_121();
			Move_POI_117_POI_120();
			Move_POI_117_POI_123();
			Move_POI_117_POI_122();
			Move_POI_117_POI_125();
			Move_POI_117_POI_124();
			Move_POI_117_POI_116();
			Move_POI_117_POI_115();
			Move_POI_117_POI_118();
			Move_POI_117_POI_119();
			Finish();
		}

		VALUE Move_POI_117_POI_130() [3, 5]
		MEETS {
			Visit_POI_130();
		}

		VALUE Move_POI_117_POI_110() [6, 10]
		MEETS {
			Visit_POI_110();
		}

		VALUE Move_POI_117_POI_132() [2, 4]
		MEETS {
			Visit_POI_132();
		}

		VALUE Move_POI_117_POI_131() [4, 6]
		MEETS {
			Visit_POI_131();
		}

		VALUE Move_POI_117_POI_112() [1, 1]
		MEETS {
			Visit_POI_112();
		}

		VALUE Move_POI_117_POI_111() [6, 10]
		MEETS {
			Visit_POI_111();
		}

		VALUE Move_POI_117_POI_114() [6, 10]
		MEETS {
			Visit_POI_114();
		}

		VALUE Move_POI_117_POI_113() [3, 5]
		MEETS {
			Visit_POI_113();
		}

		VALUE Move_POI_117_POI_127() [2, 4]
		MEETS {
			Visit_POI_127();
		}

		VALUE Move_POI_117_POI_126() [6, 10]
		MEETS {
			Visit_POI_126();
		}

		VALUE Move_POI_117_POI_129() [7, 11]
		MEETS {
			Visit_POI_129();
		}

		VALUE Move_POI_117_POI_128() [2, 4]
		MEETS {
			Visit_POI_128();
		}

		VALUE Move_POI_117_POI_109() [1, 1]
		MEETS {
			Visit_POI_109();
		}

		VALUE Move_POI_117_POI_108() [1, 1]
		MEETS {
			Visit_POI_108();
		}

		VALUE Move_POI_117_POI_121() [6, 8]
		MEETS {
			Visit_POI_121();
		}

		VALUE Move_POI_117_POI_120() [2, 4]
		MEETS {
			Visit_POI_120();
		}

		VALUE Move_POI_117_POI_123() [4, 6]
		MEETS {
			Visit_POI_123();
		}

		VALUE Move_POI_117_POI_122() [6, 8]
		MEETS {
			Visit_POI_122();
		}

		VALUE Move_POI_117_POI_125() [7, 11]
		MEETS {
			Visit_POI_125();
		}

		VALUE Move_POI_117_POI_124() [6, 8]
		MEETS {
			Visit_POI_124();
		}

		VALUE Move_POI_117_POI_116() [6, 10]
		MEETS {
			Visit_POI_116();
		}

		VALUE Move_POI_117_POI_115() [2, 4]
		MEETS {
			Visit_POI_115();
		}

		VALUE Move_POI_117_POI_118() [7, 11]
		MEETS {
			Visit_POI_118();
		}

		VALUE Move_POI_117_POI_119() [6, 10]
		MEETS {
			Visit_POI_119();
		}

		VALUE Visit_POI_119() [24, 36]
		MEETS {
			Move_POI_119_POI_130();
			Move_POI_119_POI_110();
			Move_POI_119_POI_132();
			Move_POI_119_POI_131();
			Move_POI_119_POI_112();
			Move_POI_119_POI_111();
			Move_POI_119_POI_114();
			Move_POI_119_POI_113();
			Move_POI_119_POI_127();
			Move_POI_119_POI_126();
			Move_POI_119_POI_129();
			Move_POI_119_POI_128();
			Move_POI_119_POI_109();
			Move_POI_119_POI_108();
			Move_POI_119_POI_121();
			Move_POI_119_POI_120();
			Move_POI_119_POI_123();
			Move_POI_119_POI_122();
			Move_POI_119_POI_125();
			Move_POI_119_POI_124();
			Move_POI_119_POI_116();
			Move_POI_119_POI_115();
			Move_POI_119_POI_118();
			Move_POI_119_POI_117();
			Finish();
		}

		VALUE Move_POI_119_POI_130() [5, 7]
		MEETS {
			Visit_POI_130();
		}

		VALUE Move_POI_119_POI_110() [2, 2]
		MEETS {
			Visit_POI_110();
		}

		VALUE Move_POI_119_POI_132() [5, 7]
		MEETS {
			Visit_POI_132();
		}

		VALUE Move_POI_119_POI_131() [1, 1]
		MEETS {
			Visit_POI_131();
		}

		VALUE Move_POI_119_POI_112() [2, 2]
		MEETS {
			Visit_POI_112();
		}

		VALUE Move_POI_119_POI_111() [6, 8]
		MEETS {
			Visit_POI_111();
		}

		VALUE Move_POI_119_POI_114() [7, 11]
		MEETS {
			Visit_POI_114();
		}

		VALUE Move_POI_119_POI_113() [5, 7]
		MEETS {
			Visit_POI_113();
		}

		VALUE Move_POI_119_POI_127() [3, 5]
		MEETS {
			Visit_POI_127();
		}

		VALUE Move_POI_119_POI_126() [1, 1]
		MEETS {
			Visit_POI_126();
		}

		VALUE Move_POI_119_POI_129() [7, 11]
		MEETS {
			Visit_POI_129();
		}

		VALUE Move_POI_119_POI_128() [6, 8]
		MEETS {
			Visit_POI_128();
		}

		VALUE Move_POI_119_POI_109() [4, 6]
		MEETS {
			Visit_POI_109();
		}

		VALUE Move_POI_119_POI_108() [2, 2]
		MEETS {
			Visit_POI_108();
		}

		VALUE Move_POI_119_POI_121() [7, 11]
		MEETS {
			Visit_POI_121();
		}

		VALUE Move_POI_119_POI_120() [2, 2]
		MEETS {
			Visit_POI_120();
		}

		VALUE Move_POI_119_POI_123() [7, 11]
		MEETS {
			Visit_POI_123();
		}

		VALUE Move_POI_119_POI_122() [6, 10]
		MEETS {
			Visit_POI_122();
		}

		VALUE Move_POI_119_POI_125() [2, 4]
		MEETS {
			Visit_POI_125();
		}

		VALUE Move_POI_119_POI_124() [7, 11]
		MEETS {
			Visit_POI_124();
		}

		VALUE Move_POI_119_POI_116() [6, 8]
		MEETS {
			Visit_POI_116();
		}

		VALUE Move_POI_119_POI_115() [5, 7]
		MEETS {
			Visit_POI_115();
		}

		VALUE Move_POI_119_POI_118() [5, 7]
		MEETS {
			Visit_POI_118();
		}

		VALUE Move_POI_119_POI_117() [2, 4]
		MEETS {
			Visit_POI_117();
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

			cd0 <!> TripPath.hops.Visit_POI_130();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_110();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_132();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_131();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_112();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_111();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_114();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_113();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_127();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_126();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_129();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_128();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_109();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_108();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_121();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_120();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_123();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_122();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_125();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_124();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_116();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_115();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_118();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_117();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_119();
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

