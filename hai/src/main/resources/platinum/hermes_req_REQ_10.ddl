DOMAIN TRIP_PLANNING {

	TEMPORAL_MODULE tm = [0, 291], 1000;

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
		 Visit_POI_190(), Move_Home_POI_190(), Move_POI_190_POI_192(), Move_POI_190_POI_191(), Move_POI_190_POI_183(), Move_POI_190_POI_194(), Move_POI_190_POI_193(), Move_POI_190_POI_185(), Move_POI_190_POI_196(), Move_POI_190_POI_184(), Move_POI_190_POI_195(), Move_POI_190_POI_187(), Move_POI_190_POI_198(), Move_POI_190_POI_186(), Move_POI_190_POI_197(), Move_POI_190_POI_189(), Move_POI_190_POI_201(), Move_POI_190_POI_188(), Move_POI_190_POI_199(), Move_POI_190_POI_202(), Move_POI_190_POI_200(), 
		 Visit_POI_192(), Move_Home_POI_192(), Move_POI_192_POI_190(), Move_POI_192_POI_191(), Move_POI_192_POI_183(), Move_POI_192_POI_194(), Move_POI_192_POI_193(), Move_POI_192_POI_185(), Move_POI_192_POI_196(), Move_POI_192_POI_184(), Move_POI_192_POI_195(), Move_POI_192_POI_187(), Move_POI_192_POI_198(), Move_POI_192_POI_186(), Move_POI_192_POI_197(), Move_POI_192_POI_189(), Move_POI_192_POI_201(), Move_POI_192_POI_188(), Move_POI_192_POI_199(), Move_POI_192_POI_202(), Move_POI_192_POI_200(), 
		 Visit_POI_191(), Move_Home_POI_191(), Move_POI_191_POI_190(), Move_POI_191_POI_192(), Move_POI_191_POI_183(), Move_POI_191_POI_194(), Move_POI_191_POI_193(), Move_POI_191_POI_185(), Move_POI_191_POI_196(), Move_POI_191_POI_184(), Move_POI_191_POI_195(), Move_POI_191_POI_187(), Move_POI_191_POI_198(), Move_POI_191_POI_186(), Move_POI_191_POI_197(), Move_POI_191_POI_189(), Move_POI_191_POI_201(), Move_POI_191_POI_188(), Move_POI_191_POI_199(), Move_POI_191_POI_202(), Move_POI_191_POI_200(), 
		 Visit_POI_183(), Move_Home_POI_183(), Move_POI_183_POI_190(), Move_POI_183_POI_192(), Move_POI_183_POI_191(), Move_POI_183_POI_194(), Move_POI_183_POI_193(), Move_POI_183_POI_185(), Move_POI_183_POI_196(), Move_POI_183_POI_184(), Move_POI_183_POI_195(), Move_POI_183_POI_187(), Move_POI_183_POI_198(), Move_POI_183_POI_186(), Move_POI_183_POI_197(), Move_POI_183_POI_189(), Move_POI_183_POI_201(), Move_POI_183_POI_188(), Move_POI_183_POI_199(), Move_POI_183_POI_202(), Move_POI_183_POI_200(), 
		 Visit_POI_194(), Move_Home_POI_194(), Move_POI_194_POI_190(), Move_POI_194_POI_192(), Move_POI_194_POI_191(), Move_POI_194_POI_183(), Move_POI_194_POI_193(), Move_POI_194_POI_185(), Move_POI_194_POI_196(), Move_POI_194_POI_184(), Move_POI_194_POI_195(), Move_POI_194_POI_187(), Move_POI_194_POI_198(), Move_POI_194_POI_186(), Move_POI_194_POI_197(), Move_POI_194_POI_189(), Move_POI_194_POI_201(), Move_POI_194_POI_188(), Move_POI_194_POI_199(), Move_POI_194_POI_202(), Move_POI_194_POI_200(), 
		 Visit_POI_193(), Move_Home_POI_193(), Move_POI_193_POI_190(), Move_POI_193_POI_192(), Move_POI_193_POI_191(), Move_POI_193_POI_183(), Move_POI_193_POI_194(), Move_POI_193_POI_185(), Move_POI_193_POI_196(), Move_POI_193_POI_184(), Move_POI_193_POI_195(), Move_POI_193_POI_187(), Move_POI_193_POI_198(), Move_POI_193_POI_186(), Move_POI_193_POI_197(), Move_POI_193_POI_189(), Move_POI_193_POI_201(), Move_POI_193_POI_188(), Move_POI_193_POI_199(), Move_POI_193_POI_202(), Move_POI_193_POI_200(), 
		 Visit_POI_185(), Move_Home_POI_185(), Move_POI_185_POI_190(), Move_POI_185_POI_192(), Move_POI_185_POI_191(), Move_POI_185_POI_183(), Move_POI_185_POI_194(), Move_POI_185_POI_193(), Move_POI_185_POI_196(), Move_POI_185_POI_184(), Move_POI_185_POI_195(), Move_POI_185_POI_187(), Move_POI_185_POI_198(), Move_POI_185_POI_186(), Move_POI_185_POI_197(), Move_POI_185_POI_189(), Move_POI_185_POI_201(), Move_POI_185_POI_188(), Move_POI_185_POI_199(), Move_POI_185_POI_202(), Move_POI_185_POI_200(), 
		 Visit_POI_196(), Move_Home_POI_196(), Move_POI_196_POI_190(), Move_POI_196_POI_192(), Move_POI_196_POI_191(), Move_POI_196_POI_183(), Move_POI_196_POI_194(), Move_POI_196_POI_193(), Move_POI_196_POI_185(), Move_POI_196_POI_184(), Move_POI_196_POI_195(), Move_POI_196_POI_187(), Move_POI_196_POI_198(), Move_POI_196_POI_186(), Move_POI_196_POI_197(), Move_POI_196_POI_189(), Move_POI_196_POI_201(), Move_POI_196_POI_188(), Move_POI_196_POI_199(), Move_POI_196_POI_202(), Move_POI_196_POI_200(), 
		 Visit_POI_184(), Move_Home_POI_184(), Move_POI_184_POI_190(), Move_POI_184_POI_192(), Move_POI_184_POI_191(), Move_POI_184_POI_183(), Move_POI_184_POI_194(), Move_POI_184_POI_193(), Move_POI_184_POI_185(), Move_POI_184_POI_196(), Move_POI_184_POI_195(), Move_POI_184_POI_187(), Move_POI_184_POI_198(), Move_POI_184_POI_186(), Move_POI_184_POI_197(), Move_POI_184_POI_189(), Move_POI_184_POI_201(), Move_POI_184_POI_188(), Move_POI_184_POI_199(), Move_POI_184_POI_202(), Move_POI_184_POI_200(), 
		 Visit_POI_195(), Move_Home_POI_195(), Move_POI_195_POI_190(), Move_POI_195_POI_192(), Move_POI_195_POI_191(), Move_POI_195_POI_183(), Move_POI_195_POI_194(), Move_POI_195_POI_193(), Move_POI_195_POI_185(), Move_POI_195_POI_196(), Move_POI_195_POI_184(), Move_POI_195_POI_187(), Move_POI_195_POI_198(), Move_POI_195_POI_186(), Move_POI_195_POI_197(), Move_POI_195_POI_189(), Move_POI_195_POI_201(), Move_POI_195_POI_188(), Move_POI_195_POI_199(), Move_POI_195_POI_202(), Move_POI_195_POI_200(), 
		 Visit_POI_187(), Move_Home_POI_187(), Move_POI_187_POI_190(), Move_POI_187_POI_192(), Move_POI_187_POI_191(), Move_POI_187_POI_183(), Move_POI_187_POI_194(), Move_POI_187_POI_193(), Move_POI_187_POI_185(), Move_POI_187_POI_196(), Move_POI_187_POI_184(), Move_POI_187_POI_195(), Move_POI_187_POI_198(), Move_POI_187_POI_186(), Move_POI_187_POI_197(), Move_POI_187_POI_189(), Move_POI_187_POI_201(), Move_POI_187_POI_188(), Move_POI_187_POI_199(), Move_POI_187_POI_202(), Move_POI_187_POI_200(), 
		 Visit_POI_198(), Move_Home_POI_198(), Move_POI_198_POI_190(), Move_POI_198_POI_192(), Move_POI_198_POI_191(), Move_POI_198_POI_183(), Move_POI_198_POI_194(), Move_POI_198_POI_193(), Move_POI_198_POI_185(), Move_POI_198_POI_196(), Move_POI_198_POI_184(), Move_POI_198_POI_195(), Move_POI_198_POI_187(), Move_POI_198_POI_186(), Move_POI_198_POI_197(), Move_POI_198_POI_189(), Move_POI_198_POI_201(), Move_POI_198_POI_188(), Move_POI_198_POI_199(), Move_POI_198_POI_202(), Move_POI_198_POI_200(), 
		 Visit_POI_186(), Move_Home_POI_186(), Move_POI_186_POI_190(), Move_POI_186_POI_192(), Move_POI_186_POI_191(), Move_POI_186_POI_183(), Move_POI_186_POI_194(), Move_POI_186_POI_193(), Move_POI_186_POI_185(), Move_POI_186_POI_196(), Move_POI_186_POI_184(), Move_POI_186_POI_195(), Move_POI_186_POI_187(), Move_POI_186_POI_198(), Move_POI_186_POI_197(), Move_POI_186_POI_189(), Move_POI_186_POI_201(), Move_POI_186_POI_188(), Move_POI_186_POI_199(), Move_POI_186_POI_202(), Move_POI_186_POI_200(), 
		 Visit_POI_197(), Move_Home_POI_197(), Move_POI_197_POI_190(), Move_POI_197_POI_192(), Move_POI_197_POI_191(), Move_POI_197_POI_183(), Move_POI_197_POI_194(), Move_POI_197_POI_193(), Move_POI_197_POI_185(), Move_POI_197_POI_196(), Move_POI_197_POI_184(), Move_POI_197_POI_195(), Move_POI_197_POI_187(), Move_POI_197_POI_198(), Move_POI_197_POI_186(), Move_POI_197_POI_189(), Move_POI_197_POI_201(), Move_POI_197_POI_188(), Move_POI_197_POI_199(), Move_POI_197_POI_202(), Move_POI_197_POI_200(), 
		 Visit_POI_189(), Move_Home_POI_189(), Move_POI_189_POI_190(), Move_POI_189_POI_192(), Move_POI_189_POI_191(), Move_POI_189_POI_183(), Move_POI_189_POI_194(), Move_POI_189_POI_193(), Move_POI_189_POI_185(), Move_POI_189_POI_196(), Move_POI_189_POI_184(), Move_POI_189_POI_195(), Move_POI_189_POI_187(), Move_POI_189_POI_198(), Move_POI_189_POI_186(), Move_POI_189_POI_197(), Move_POI_189_POI_201(), Move_POI_189_POI_188(), Move_POI_189_POI_199(), Move_POI_189_POI_202(), Move_POI_189_POI_200(), 
		 Visit_POI_201(), Move_Home_POI_201(), Move_POI_201_POI_190(), Move_POI_201_POI_192(), Move_POI_201_POI_191(), Move_POI_201_POI_183(), Move_POI_201_POI_194(), Move_POI_201_POI_193(), Move_POI_201_POI_185(), Move_POI_201_POI_196(), Move_POI_201_POI_184(), Move_POI_201_POI_195(), Move_POI_201_POI_187(), Move_POI_201_POI_198(), Move_POI_201_POI_186(), Move_POI_201_POI_197(), Move_POI_201_POI_189(), Move_POI_201_POI_188(), Move_POI_201_POI_199(), Move_POI_201_POI_202(), Move_POI_201_POI_200(), 
		 Visit_POI_188(), Move_Home_POI_188(), Move_POI_188_POI_190(), Move_POI_188_POI_192(), Move_POI_188_POI_191(), Move_POI_188_POI_183(), Move_POI_188_POI_194(), Move_POI_188_POI_193(), Move_POI_188_POI_185(), Move_POI_188_POI_196(), Move_POI_188_POI_184(), Move_POI_188_POI_195(), Move_POI_188_POI_187(), Move_POI_188_POI_198(), Move_POI_188_POI_186(), Move_POI_188_POI_197(), Move_POI_188_POI_189(), Move_POI_188_POI_201(), Move_POI_188_POI_199(), Move_POI_188_POI_202(), Move_POI_188_POI_200(), 
		 Visit_POI_199(), Move_Home_POI_199(), Move_POI_199_POI_190(), Move_POI_199_POI_192(), Move_POI_199_POI_191(), Move_POI_199_POI_183(), Move_POI_199_POI_194(), Move_POI_199_POI_193(), Move_POI_199_POI_185(), Move_POI_199_POI_196(), Move_POI_199_POI_184(), Move_POI_199_POI_195(), Move_POI_199_POI_187(), Move_POI_199_POI_198(), Move_POI_199_POI_186(), Move_POI_199_POI_197(), Move_POI_199_POI_189(), Move_POI_199_POI_201(), Move_POI_199_POI_188(), Move_POI_199_POI_202(), Move_POI_199_POI_200(), 
		 Visit_POI_202(), Move_Home_POI_202(), Move_POI_202_POI_190(), Move_POI_202_POI_192(), Move_POI_202_POI_191(), Move_POI_202_POI_183(), Move_POI_202_POI_194(), Move_POI_202_POI_193(), Move_POI_202_POI_185(), Move_POI_202_POI_196(), Move_POI_202_POI_184(), Move_POI_202_POI_195(), Move_POI_202_POI_187(), Move_POI_202_POI_198(), Move_POI_202_POI_186(), Move_POI_202_POI_197(), Move_POI_202_POI_189(), Move_POI_202_POI_201(), Move_POI_202_POI_188(), Move_POI_202_POI_199(), Move_POI_202_POI_200(), 
		 Visit_POI_200(), Move_Home_POI_200(), Move_POI_200_POI_190(), Move_POI_200_POI_192(), Move_POI_200_POI_191(), Move_POI_200_POI_183(), Move_POI_200_POI_194(), Move_POI_200_POI_193(), Move_POI_200_POI_185(), Move_POI_200_POI_196(), Move_POI_200_POI_184(), Move_POI_200_POI_195(), Move_POI_200_POI_187(), Move_POI_200_POI_198(), Move_POI_200_POI_186(), Move_POI_200_POI_197(), Move_POI_200_POI_189(), Move_POI_200_POI_201(), Move_POI_200_POI_188(), Move_POI_200_POI_199(), Move_POI_200_POI_202(), 
	) {

		VALUE Home() [1, 1]
		MEETS {
			Move_Home_POI_190();
			Move_Home_POI_192();
			Move_Home_POI_191();
			Move_Home_POI_183();
			Move_Home_POI_194();
			Move_Home_POI_193();
			Move_Home_POI_185();
			Move_Home_POI_196();
			Move_Home_POI_184();
			Move_Home_POI_195();
			Move_Home_POI_187();
			Move_Home_POI_198();
			Move_Home_POI_186();
			Move_Home_POI_197();
			Move_Home_POI_189();
			Move_Home_POI_201();
			Move_Home_POI_188();
			Move_Home_POI_199();
			Move_Home_POI_202();
			Move_Home_POI_200();
		}

		VALUE Finish() [1, +INF]
		MEETS {
			Home();
		}

		VALUE Move_Home_POI_190() [6, 10]
		MEETS {
			Visit_POI_190();
		}

		VALUE Move_Home_POI_192() [4, 6]
		MEETS {
			Visit_POI_192();
		}

		VALUE Move_Home_POI_191() [5, 7]
		MEETS {
			Visit_POI_191();
		}

		VALUE Move_Home_POI_183() [7, 11]
		MEETS {
			Visit_POI_183();
		}

		VALUE Move_Home_POI_194() [1, 1]
		MEETS {
			Visit_POI_194();
		}

		VALUE Move_Home_POI_193() [3, 5]
		MEETS {
			Visit_POI_193();
		}

		VALUE Move_Home_POI_185() [1, 1]
		MEETS {
			Visit_POI_185();
		}

		VALUE Move_Home_POI_196() [5, 7]
		MEETS {
			Visit_POI_196();
		}

		VALUE Move_Home_POI_184() [6, 10]
		MEETS {
			Visit_POI_184();
		}

		VALUE Move_Home_POI_195() [2, 4]
		MEETS {
			Visit_POI_195();
		}

		VALUE Move_Home_POI_187() [5, 7]
		MEETS {
			Visit_POI_187();
		}

		VALUE Move_Home_POI_198() [6, 10]
		MEETS {
			Visit_POI_198();
		}

		VALUE Move_Home_POI_186() [3, 5]
		MEETS {
			Visit_POI_186();
		}

		VALUE Move_Home_POI_197() [2, 2]
		MEETS {
			Visit_POI_197();
		}

		VALUE Move_Home_POI_189() [1, 1]
		MEETS {
			Visit_POI_189();
		}

		VALUE Move_Home_POI_201() [6, 8]
		MEETS {
			Visit_POI_201();
		}

		VALUE Move_Home_POI_188() [5, 7]
		MEETS {
			Visit_POI_188();
		}

		VALUE Move_Home_POI_199() [2, 4]
		MEETS {
			Visit_POI_199();
		}

		VALUE Move_Home_POI_202() [3, 5]
		MEETS {
			Visit_POI_202();
		}

		VALUE Move_Home_POI_200() [1, 1]
		MEETS {
			Visit_POI_200();
		}

		VALUE Visit_POI_190() [24, 36]
		MEETS {
			Move_POI_190_POI_192();
			Move_POI_190_POI_191();
			Move_POI_190_POI_183();
			Move_POI_190_POI_194();
			Move_POI_190_POI_193();
			Move_POI_190_POI_185();
			Move_POI_190_POI_196();
			Move_POI_190_POI_184();
			Move_POI_190_POI_195();
			Move_POI_190_POI_187();
			Move_POI_190_POI_198();
			Move_POI_190_POI_186();
			Move_POI_190_POI_197();
			Move_POI_190_POI_189();
			Move_POI_190_POI_201();
			Move_POI_190_POI_188();
			Move_POI_190_POI_199();
			Move_POI_190_POI_202();
			Move_POI_190_POI_200();
			Finish();
		}

		VALUE Move_POI_190_POI_192() [2, 4]
		MEETS {
			Visit_POI_192();
		}

		VALUE Move_POI_190_POI_191() [5, 7]
		MEETS {
			Visit_POI_191();
		}

		VALUE Move_POI_190_POI_183() [5, 7]
		MEETS {
			Visit_POI_183();
		}

		VALUE Move_POI_190_POI_194() [2, 2]
		MEETS {
			Visit_POI_194();
		}

		VALUE Move_POI_190_POI_193() [3, 5]
		MEETS {
			Visit_POI_193();
		}

		VALUE Move_POI_190_POI_185() [6, 8]
		MEETS {
			Visit_POI_185();
		}

		VALUE Move_POI_190_POI_196() [3, 5]
		MEETS {
			Visit_POI_196();
		}

		VALUE Move_POI_190_POI_184() [6, 10]
		MEETS {
			Visit_POI_184();
		}

		VALUE Move_POI_190_POI_195() [2, 4]
		MEETS {
			Visit_POI_195();
		}

		VALUE Move_POI_190_POI_187() [5, 7]
		MEETS {
			Visit_POI_187();
		}

		VALUE Move_POI_190_POI_198() [6, 8]
		MEETS {
			Visit_POI_198();
		}

		VALUE Move_POI_190_POI_186() [3, 5]
		MEETS {
			Visit_POI_186();
		}

		VALUE Move_POI_190_POI_197() [4, 6]
		MEETS {
			Visit_POI_197();
		}

		VALUE Move_POI_190_POI_189() [1, 1]
		MEETS {
			Visit_POI_189();
		}

		VALUE Move_POI_190_POI_201() [3, 5]
		MEETS {
			Visit_POI_201();
		}

		VALUE Move_POI_190_POI_188() [2, 4]
		MEETS {
			Visit_POI_188();
		}

		VALUE Move_POI_190_POI_199() [2, 2]
		MEETS {
			Visit_POI_199();
		}

		VALUE Move_POI_190_POI_202() [4, 6]
		MEETS {
			Visit_POI_202();
		}

		VALUE Move_POI_190_POI_200() [2, 2]
		MEETS {
			Visit_POI_200();
		}

		VALUE Visit_POI_192() [8, 12]
		MEETS {
			Move_POI_192_POI_190();
			Move_POI_192_POI_191();
			Move_POI_192_POI_183();
			Move_POI_192_POI_194();
			Move_POI_192_POI_193();
			Move_POI_192_POI_185();
			Move_POI_192_POI_196();
			Move_POI_192_POI_184();
			Move_POI_192_POI_195();
			Move_POI_192_POI_187();
			Move_POI_192_POI_198();
			Move_POI_192_POI_186();
			Move_POI_192_POI_197();
			Move_POI_192_POI_189();
			Move_POI_192_POI_201();
			Move_POI_192_POI_188();
			Move_POI_192_POI_199();
			Move_POI_192_POI_202();
			Move_POI_192_POI_200();
			Finish();
		}

		VALUE Move_POI_192_POI_190() [6, 8]
		MEETS {
			Visit_POI_190();
		}

		VALUE Move_POI_192_POI_191() [2, 4]
		MEETS {
			Visit_POI_191();
		}

		VALUE Move_POI_192_POI_183() [2, 4]
		MEETS {
			Visit_POI_183();
		}

		VALUE Move_POI_192_POI_194() [2, 4]
		MEETS {
			Visit_POI_194();
		}

		VALUE Move_POI_192_POI_193() [6, 8]
		MEETS {
			Visit_POI_193();
		}

		VALUE Move_POI_192_POI_185() [3, 5]
		MEETS {
			Visit_POI_185();
		}

		VALUE Move_POI_192_POI_196() [7, 11]
		MEETS {
			Visit_POI_196();
		}

		VALUE Move_POI_192_POI_184() [6, 10]
		MEETS {
			Visit_POI_184();
		}

		VALUE Move_POI_192_POI_195() [3, 5]
		MEETS {
			Visit_POI_195();
		}

		VALUE Move_POI_192_POI_187() [5, 7]
		MEETS {
			Visit_POI_187();
		}

		VALUE Move_POI_192_POI_198() [4, 6]
		MEETS {
			Visit_POI_198();
		}

		VALUE Move_POI_192_POI_186() [7, 11]
		MEETS {
			Visit_POI_186();
		}

		VALUE Move_POI_192_POI_197() [6, 8]
		MEETS {
			Visit_POI_197();
		}

		VALUE Move_POI_192_POI_189() [2, 2]
		MEETS {
			Visit_POI_189();
		}

		VALUE Move_POI_192_POI_201() [2, 4]
		MEETS {
			Visit_POI_201();
		}

		VALUE Move_POI_192_POI_188() [1, 1]
		MEETS {
			Visit_POI_188();
		}

		VALUE Move_POI_192_POI_199() [6, 10]
		MEETS {
			Visit_POI_199();
		}

		VALUE Move_POI_192_POI_202() [7, 11]
		MEETS {
			Visit_POI_202();
		}

		VALUE Move_POI_192_POI_200() [2, 2]
		MEETS {
			Visit_POI_200();
		}

		VALUE Visit_POI_191() [16, 24]
		MEETS {
			Move_POI_191_POI_190();
			Move_POI_191_POI_192();
			Move_POI_191_POI_183();
			Move_POI_191_POI_194();
			Move_POI_191_POI_193();
			Move_POI_191_POI_185();
			Move_POI_191_POI_196();
			Move_POI_191_POI_184();
			Move_POI_191_POI_195();
			Move_POI_191_POI_187();
			Move_POI_191_POI_198();
			Move_POI_191_POI_186();
			Move_POI_191_POI_197();
			Move_POI_191_POI_189();
			Move_POI_191_POI_201();
			Move_POI_191_POI_188();
			Move_POI_191_POI_199();
			Move_POI_191_POI_202();
			Move_POI_191_POI_200();
			Finish();
		}

		VALUE Move_POI_191_POI_190() [5, 7]
		MEETS {
			Visit_POI_190();
		}

		VALUE Move_POI_191_POI_192() [3, 5]
		MEETS {
			Visit_POI_192();
		}

		VALUE Move_POI_191_POI_183() [2, 4]
		MEETS {
			Visit_POI_183();
		}

		VALUE Move_POI_191_POI_194() [3, 5]
		MEETS {
			Visit_POI_194();
		}

		VALUE Move_POI_191_POI_193() [2, 4]
		MEETS {
			Visit_POI_193();
		}

		VALUE Move_POI_191_POI_185() [7, 11]
		MEETS {
			Visit_POI_185();
		}

		VALUE Move_POI_191_POI_196() [3, 5]
		MEETS {
			Visit_POI_196();
		}

		VALUE Move_POI_191_POI_184() [6, 8]
		MEETS {
			Visit_POI_184();
		}

		VALUE Move_POI_191_POI_195() [3, 5]
		MEETS {
			Visit_POI_195();
		}

		VALUE Move_POI_191_POI_187() [4, 6]
		MEETS {
			Visit_POI_187();
		}

		VALUE Move_POI_191_POI_198() [6, 10]
		MEETS {
			Visit_POI_198();
		}

		VALUE Move_POI_191_POI_186() [6, 8]
		MEETS {
			Visit_POI_186();
		}

		VALUE Move_POI_191_POI_197() [3, 5]
		MEETS {
			Visit_POI_197();
		}

		VALUE Move_POI_191_POI_189() [2, 4]
		MEETS {
			Visit_POI_189();
		}

		VALUE Move_POI_191_POI_201() [5, 7]
		MEETS {
			Visit_POI_201();
		}

		VALUE Move_POI_191_POI_188() [1, 1]
		MEETS {
			Visit_POI_188();
		}

		VALUE Move_POI_191_POI_199() [2, 2]
		MEETS {
			Visit_POI_199();
		}

		VALUE Move_POI_191_POI_202() [3, 5]
		MEETS {
			Visit_POI_202();
		}

		VALUE Move_POI_191_POI_200() [4, 6]
		MEETS {
			Visit_POI_200();
		}

		VALUE Visit_POI_183() [24, 36]
		MEETS {
			Move_POI_183_POI_190();
			Move_POI_183_POI_192();
			Move_POI_183_POI_191();
			Move_POI_183_POI_194();
			Move_POI_183_POI_193();
			Move_POI_183_POI_185();
			Move_POI_183_POI_196();
			Move_POI_183_POI_184();
			Move_POI_183_POI_195();
			Move_POI_183_POI_187();
			Move_POI_183_POI_198();
			Move_POI_183_POI_186();
			Move_POI_183_POI_197();
			Move_POI_183_POI_189();
			Move_POI_183_POI_201();
			Move_POI_183_POI_188();
			Move_POI_183_POI_199();
			Move_POI_183_POI_202();
			Move_POI_183_POI_200();
			Finish();
		}

		VALUE Move_POI_183_POI_190() [3, 5]
		MEETS {
			Visit_POI_190();
		}

		VALUE Move_POI_183_POI_192() [6, 10]
		MEETS {
			Visit_POI_192();
		}

		VALUE Move_POI_183_POI_191() [6, 10]
		MEETS {
			Visit_POI_191();
		}

		VALUE Move_POI_183_POI_194() [2, 2]
		MEETS {
			Visit_POI_194();
		}

		VALUE Move_POI_183_POI_193() [4, 6]
		MEETS {
			Visit_POI_193();
		}

		VALUE Move_POI_183_POI_185() [5, 7]
		MEETS {
			Visit_POI_185();
		}

		VALUE Move_POI_183_POI_196() [6, 8]
		MEETS {
			Visit_POI_196();
		}

		VALUE Move_POI_183_POI_184() [3, 5]
		MEETS {
			Visit_POI_184();
		}

		VALUE Move_POI_183_POI_195() [6, 10]
		MEETS {
			Visit_POI_195();
		}

		VALUE Move_POI_183_POI_187() [6, 10]
		MEETS {
			Visit_POI_187();
		}

		VALUE Move_POI_183_POI_198() [1, 1]
		MEETS {
			Visit_POI_198();
		}

		VALUE Move_POI_183_POI_186() [5, 7]
		MEETS {
			Visit_POI_186();
		}

		VALUE Move_POI_183_POI_197() [6, 8]
		MEETS {
			Visit_POI_197();
		}

		VALUE Move_POI_183_POI_189() [4, 6]
		MEETS {
			Visit_POI_189();
		}

		VALUE Move_POI_183_POI_201() [6, 10]
		MEETS {
			Visit_POI_201();
		}

		VALUE Move_POI_183_POI_188() [7, 11]
		MEETS {
			Visit_POI_188();
		}

		VALUE Move_POI_183_POI_199() [1, 1]
		MEETS {
			Visit_POI_199();
		}

		VALUE Move_POI_183_POI_202() [2, 4]
		MEETS {
			Visit_POI_202();
		}

		VALUE Move_POI_183_POI_200() [7, 11]
		MEETS {
			Visit_POI_200();
		}

		VALUE Visit_POI_194() [8, 12]
		MEETS {
			Move_POI_194_POI_190();
			Move_POI_194_POI_192();
			Move_POI_194_POI_191();
			Move_POI_194_POI_183();
			Move_POI_194_POI_193();
			Move_POI_194_POI_185();
			Move_POI_194_POI_196();
			Move_POI_194_POI_184();
			Move_POI_194_POI_195();
			Move_POI_194_POI_187();
			Move_POI_194_POI_198();
			Move_POI_194_POI_186();
			Move_POI_194_POI_197();
			Move_POI_194_POI_189();
			Move_POI_194_POI_201();
			Move_POI_194_POI_188();
			Move_POI_194_POI_199();
			Move_POI_194_POI_202();
			Move_POI_194_POI_200();
			Finish();
		}

		VALUE Move_POI_194_POI_190() [4, 6]
		MEETS {
			Visit_POI_190();
		}

		VALUE Move_POI_194_POI_192() [6, 10]
		MEETS {
			Visit_POI_192();
		}

		VALUE Move_POI_194_POI_191() [3, 5]
		MEETS {
			Visit_POI_191();
		}

		VALUE Move_POI_194_POI_183() [1, 1]
		MEETS {
			Visit_POI_183();
		}

		VALUE Move_POI_194_POI_193() [3, 5]
		MEETS {
			Visit_POI_193();
		}

		VALUE Move_POI_194_POI_185() [5, 7]
		MEETS {
			Visit_POI_185();
		}

		VALUE Move_POI_194_POI_196() [3, 5]
		MEETS {
			Visit_POI_196();
		}

		VALUE Move_POI_194_POI_184() [5, 7]
		MEETS {
			Visit_POI_184();
		}

		VALUE Move_POI_194_POI_195() [3, 5]
		MEETS {
			Visit_POI_195();
		}

		VALUE Move_POI_194_POI_187() [3, 5]
		MEETS {
			Visit_POI_187();
		}

		VALUE Move_POI_194_POI_198() [1, 1]
		MEETS {
			Visit_POI_198();
		}

		VALUE Move_POI_194_POI_186() [2, 4]
		MEETS {
			Visit_POI_186();
		}

		VALUE Move_POI_194_POI_197() [6, 10]
		MEETS {
			Visit_POI_197();
		}

		VALUE Move_POI_194_POI_189() [5, 7]
		MEETS {
			Visit_POI_189();
		}

		VALUE Move_POI_194_POI_201() [5, 7]
		MEETS {
			Visit_POI_201();
		}

		VALUE Move_POI_194_POI_188() [2, 4]
		MEETS {
			Visit_POI_188();
		}

		VALUE Move_POI_194_POI_199() [6, 10]
		MEETS {
			Visit_POI_199();
		}

		VALUE Move_POI_194_POI_202() [1, 1]
		MEETS {
			Visit_POI_202();
		}

		VALUE Move_POI_194_POI_200() [2, 2]
		MEETS {
			Visit_POI_200();
		}

		VALUE Visit_POI_193() [24, 36]
		MEETS {
			Move_POI_193_POI_190();
			Move_POI_193_POI_192();
			Move_POI_193_POI_191();
			Move_POI_193_POI_183();
			Move_POI_193_POI_194();
			Move_POI_193_POI_185();
			Move_POI_193_POI_196();
			Move_POI_193_POI_184();
			Move_POI_193_POI_195();
			Move_POI_193_POI_187();
			Move_POI_193_POI_198();
			Move_POI_193_POI_186();
			Move_POI_193_POI_197();
			Move_POI_193_POI_189();
			Move_POI_193_POI_201();
			Move_POI_193_POI_188();
			Move_POI_193_POI_199();
			Move_POI_193_POI_202();
			Move_POI_193_POI_200();
			Finish();
		}

		VALUE Move_POI_193_POI_190() [2, 4]
		MEETS {
			Visit_POI_190();
		}

		VALUE Move_POI_193_POI_192() [1, 1]
		MEETS {
			Visit_POI_192();
		}

		VALUE Move_POI_193_POI_191() [3, 5]
		MEETS {
			Visit_POI_191();
		}

		VALUE Move_POI_193_POI_183() [2, 2]
		MEETS {
			Visit_POI_183();
		}

		VALUE Move_POI_193_POI_194() [7, 11]
		MEETS {
			Visit_POI_194();
		}

		VALUE Move_POI_193_POI_185() [1, 1]
		MEETS {
			Visit_POI_185();
		}

		VALUE Move_POI_193_POI_196() [4, 6]
		MEETS {
			Visit_POI_196();
		}

		VALUE Move_POI_193_POI_184() [3, 5]
		MEETS {
			Visit_POI_184();
		}

		VALUE Move_POI_193_POI_195() [7, 11]
		MEETS {
			Visit_POI_195();
		}

		VALUE Move_POI_193_POI_187() [1, 1]
		MEETS {
			Visit_POI_187();
		}

		VALUE Move_POI_193_POI_198() [4, 6]
		MEETS {
			Visit_POI_198();
		}

		VALUE Move_POI_193_POI_186() [3, 5]
		MEETS {
			Visit_POI_186();
		}

		VALUE Move_POI_193_POI_197() [5, 7]
		MEETS {
			Visit_POI_197();
		}

		VALUE Move_POI_193_POI_189() [2, 4]
		MEETS {
			Visit_POI_189();
		}

		VALUE Move_POI_193_POI_201() [6, 10]
		MEETS {
			Visit_POI_201();
		}

		VALUE Move_POI_193_POI_188() [2, 2]
		MEETS {
			Visit_POI_188();
		}

		VALUE Move_POI_193_POI_199() [6, 8]
		MEETS {
			Visit_POI_199();
		}

		VALUE Move_POI_193_POI_202() [7, 11]
		MEETS {
			Visit_POI_202();
		}

		VALUE Move_POI_193_POI_200() [6, 8]
		MEETS {
			Visit_POI_200();
		}

		VALUE Visit_POI_185() [8, 12]
		MEETS {
			Move_POI_185_POI_190();
			Move_POI_185_POI_192();
			Move_POI_185_POI_191();
			Move_POI_185_POI_183();
			Move_POI_185_POI_194();
			Move_POI_185_POI_193();
			Move_POI_185_POI_196();
			Move_POI_185_POI_184();
			Move_POI_185_POI_195();
			Move_POI_185_POI_187();
			Move_POI_185_POI_198();
			Move_POI_185_POI_186();
			Move_POI_185_POI_197();
			Move_POI_185_POI_189();
			Move_POI_185_POI_201();
			Move_POI_185_POI_188();
			Move_POI_185_POI_199();
			Move_POI_185_POI_202();
			Move_POI_185_POI_200();
			Finish();
		}

		VALUE Move_POI_185_POI_190() [6, 8]
		MEETS {
			Visit_POI_190();
		}

		VALUE Move_POI_185_POI_192() [3, 5]
		MEETS {
			Visit_POI_192();
		}

		VALUE Move_POI_185_POI_191() [5, 7]
		MEETS {
			Visit_POI_191();
		}

		VALUE Move_POI_185_POI_183() [3, 5]
		MEETS {
			Visit_POI_183();
		}

		VALUE Move_POI_185_POI_194() [1, 1]
		MEETS {
			Visit_POI_194();
		}

		VALUE Move_POI_185_POI_193() [2, 4]
		MEETS {
			Visit_POI_193();
		}

		VALUE Move_POI_185_POI_196() [2, 4]
		MEETS {
			Visit_POI_196();
		}

		VALUE Move_POI_185_POI_184() [2, 2]
		MEETS {
			Visit_POI_184();
		}

		VALUE Move_POI_185_POI_195() [5, 7]
		MEETS {
			Visit_POI_195();
		}

		VALUE Move_POI_185_POI_187() [7, 11]
		MEETS {
			Visit_POI_187();
		}

		VALUE Move_POI_185_POI_198() [6, 8]
		MEETS {
			Visit_POI_198();
		}

		VALUE Move_POI_185_POI_186() [1, 1]
		MEETS {
			Visit_POI_186();
		}

		VALUE Move_POI_185_POI_197() [5, 7]
		MEETS {
			Visit_POI_197();
		}

		VALUE Move_POI_185_POI_189() [7, 11]
		MEETS {
			Visit_POI_189();
		}

		VALUE Move_POI_185_POI_201() [6, 10]
		MEETS {
			Visit_POI_201();
		}

		VALUE Move_POI_185_POI_188() [2, 2]
		MEETS {
			Visit_POI_188();
		}

		VALUE Move_POI_185_POI_199() [7, 11]
		MEETS {
			Visit_POI_199();
		}

		VALUE Move_POI_185_POI_202() [3, 5]
		MEETS {
			Visit_POI_202();
		}

		VALUE Move_POI_185_POI_200() [7, 11]
		MEETS {
			Visit_POI_200();
		}

		VALUE Visit_POI_196() [24, 36]
		MEETS {
			Move_POI_196_POI_190();
			Move_POI_196_POI_192();
			Move_POI_196_POI_191();
			Move_POI_196_POI_183();
			Move_POI_196_POI_194();
			Move_POI_196_POI_193();
			Move_POI_196_POI_185();
			Move_POI_196_POI_184();
			Move_POI_196_POI_195();
			Move_POI_196_POI_187();
			Move_POI_196_POI_198();
			Move_POI_196_POI_186();
			Move_POI_196_POI_197();
			Move_POI_196_POI_189();
			Move_POI_196_POI_201();
			Move_POI_196_POI_188();
			Move_POI_196_POI_199();
			Move_POI_196_POI_202();
			Move_POI_196_POI_200();
			Finish();
		}

		VALUE Move_POI_196_POI_190() [4, 6]
		MEETS {
			Visit_POI_190();
		}

		VALUE Move_POI_196_POI_192() [2, 4]
		MEETS {
			Visit_POI_192();
		}

		VALUE Move_POI_196_POI_191() [2, 2]
		MEETS {
			Visit_POI_191();
		}

		VALUE Move_POI_196_POI_183() [2, 4]
		MEETS {
			Visit_POI_183();
		}

		VALUE Move_POI_196_POI_194() [7, 11]
		MEETS {
			Visit_POI_194();
		}

		VALUE Move_POI_196_POI_193() [4, 6]
		MEETS {
			Visit_POI_193();
		}

		VALUE Move_POI_196_POI_185() [2, 2]
		MEETS {
			Visit_POI_185();
		}

		VALUE Move_POI_196_POI_184() [6, 10]
		MEETS {
			Visit_POI_184();
		}

		VALUE Move_POI_196_POI_195() [6, 10]
		MEETS {
			Visit_POI_195();
		}

		VALUE Move_POI_196_POI_187() [2, 4]
		MEETS {
			Visit_POI_187();
		}

		VALUE Move_POI_196_POI_198() [7, 11]
		MEETS {
			Visit_POI_198();
		}

		VALUE Move_POI_196_POI_186() [6, 8]
		MEETS {
			Visit_POI_186();
		}

		VALUE Move_POI_196_POI_197() [1, 1]
		MEETS {
			Visit_POI_197();
		}

		VALUE Move_POI_196_POI_189() [6, 10]
		MEETS {
			Visit_POI_189();
		}

		VALUE Move_POI_196_POI_201() [7, 11]
		MEETS {
			Visit_POI_201();
		}

		VALUE Move_POI_196_POI_188() [3, 5]
		MEETS {
			Visit_POI_188();
		}

		VALUE Move_POI_196_POI_199() [1, 1]
		MEETS {
			Visit_POI_199();
		}

		VALUE Move_POI_196_POI_202() [3, 5]
		MEETS {
			Visit_POI_202();
		}

		VALUE Move_POI_196_POI_200() [1, 1]
		MEETS {
			Visit_POI_200();
		}

		VALUE Visit_POI_184() [72, 108]
		MEETS {
			Move_POI_184_POI_190();
			Move_POI_184_POI_192();
			Move_POI_184_POI_191();
			Move_POI_184_POI_183();
			Move_POI_184_POI_194();
			Move_POI_184_POI_193();
			Move_POI_184_POI_185();
			Move_POI_184_POI_196();
			Move_POI_184_POI_195();
			Move_POI_184_POI_187();
			Move_POI_184_POI_198();
			Move_POI_184_POI_186();
			Move_POI_184_POI_197();
			Move_POI_184_POI_189();
			Move_POI_184_POI_201();
			Move_POI_184_POI_188();
			Move_POI_184_POI_199();
			Move_POI_184_POI_202();
			Move_POI_184_POI_200();
			Finish();
		}

		VALUE Move_POI_184_POI_190() [1, 1]
		MEETS {
			Visit_POI_190();
		}

		VALUE Move_POI_184_POI_192() [6, 8]
		MEETS {
			Visit_POI_192();
		}

		VALUE Move_POI_184_POI_191() [7, 11]
		MEETS {
			Visit_POI_191();
		}

		VALUE Move_POI_184_POI_183() [7, 11]
		MEETS {
			Visit_POI_183();
		}

		VALUE Move_POI_184_POI_194() [6, 10]
		MEETS {
			Visit_POI_194();
		}

		VALUE Move_POI_184_POI_193() [1, 1]
		MEETS {
			Visit_POI_193();
		}

		VALUE Move_POI_184_POI_185() [4, 6]
		MEETS {
			Visit_POI_185();
		}

		VALUE Move_POI_184_POI_196() [4, 6]
		MEETS {
			Visit_POI_196();
		}

		VALUE Move_POI_184_POI_195() [6, 10]
		MEETS {
			Visit_POI_195();
		}

		VALUE Move_POI_184_POI_187() [7, 11]
		MEETS {
			Visit_POI_187();
		}

		VALUE Move_POI_184_POI_198() [3, 5]
		MEETS {
			Visit_POI_198();
		}

		VALUE Move_POI_184_POI_186() [4, 6]
		MEETS {
			Visit_POI_186();
		}

		VALUE Move_POI_184_POI_197() [6, 10]
		MEETS {
			Visit_POI_197();
		}

		VALUE Move_POI_184_POI_189() [1, 1]
		MEETS {
			Visit_POI_189();
		}

		VALUE Move_POI_184_POI_201() [2, 2]
		MEETS {
			Visit_POI_201();
		}

		VALUE Move_POI_184_POI_188() [2, 4]
		MEETS {
			Visit_POI_188();
		}

		VALUE Move_POI_184_POI_199() [5, 7]
		MEETS {
			Visit_POI_199();
		}

		VALUE Move_POI_184_POI_202() [2, 2]
		MEETS {
			Visit_POI_202();
		}

		VALUE Move_POI_184_POI_200() [7, 11]
		MEETS {
			Visit_POI_200();
		}

		VALUE Visit_POI_195() [24, 36]
		MEETS {
			Move_POI_195_POI_190();
			Move_POI_195_POI_192();
			Move_POI_195_POI_191();
			Move_POI_195_POI_183();
			Move_POI_195_POI_194();
			Move_POI_195_POI_193();
			Move_POI_195_POI_185();
			Move_POI_195_POI_196();
			Move_POI_195_POI_184();
			Move_POI_195_POI_187();
			Move_POI_195_POI_198();
			Move_POI_195_POI_186();
			Move_POI_195_POI_197();
			Move_POI_195_POI_189();
			Move_POI_195_POI_201();
			Move_POI_195_POI_188();
			Move_POI_195_POI_199();
			Move_POI_195_POI_202();
			Move_POI_195_POI_200();
			Finish();
		}

		VALUE Move_POI_195_POI_190() [1, 1]
		MEETS {
			Visit_POI_190();
		}

		VALUE Move_POI_195_POI_192() [2, 4]
		MEETS {
			Visit_POI_192();
		}

		VALUE Move_POI_195_POI_191() [7, 11]
		MEETS {
			Visit_POI_191();
		}

		VALUE Move_POI_195_POI_183() [7, 11]
		MEETS {
			Visit_POI_183();
		}

		VALUE Move_POI_195_POI_194() [1, 1]
		MEETS {
			Visit_POI_194();
		}

		VALUE Move_POI_195_POI_193() [6, 8]
		MEETS {
			Visit_POI_193();
		}

		VALUE Move_POI_195_POI_185() [4, 6]
		MEETS {
			Visit_POI_185();
		}

		VALUE Move_POI_195_POI_196() [2, 4]
		MEETS {
			Visit_POI_196();
		}

		VALUE Move_POI_195_POI_184() [4, 6]
		MEETS {
			Visit_POI_184();
		}

		VALUE Move_POI_195_POI_187() [6, 10]
		MEETS {
			Visit_POI_187();
		}

		VALUE Move_POI_195_POI_198() [4, 6]
		MEETS {
			Visit_POI_198();
		}

		VALUE Move_POI_195_POI_186() [6, 10]
		MEETS {
			Visit_POI_186();
		}

		VALUE Move_POI_195_POI_197() [7, 11]
		MEETS {
			Visit_POI_197();
		}

		VALUE Move_POI_195_POI_189() [2, 2]
		MEETS {
			Visit_POI_189();
		}

		VALUE Move_POI_195_POI_201() [1, 1]
		MEETS {
			Visit_POI_201();
		}

		VALUE Move_POI_195_POI_188() [3, 5]
		MEETS {
			Visit_POI_188();
		}

		VALUE Move_POI_195_POI_199() [6, 10]
		MEETS {
			Visit_POI_199();
		}

		VALUE Move_POI_195_POI_202() [4, 6]
		MEETS {
			Visit_POI_202();
		}

		VALUE Move_POI_195_POI_200() [7, 11]
		MEETS {
			Visit_POI_200();
		}

		VALUE Visit_POI_187() [24, 36]
		MEETS {
			Move_POI_187_POI_190();
			Move_POI_187_POI_192();
			Move_POI_187_POI_191();
			Move_POI_187_POI_183();
			Move_POI_187_POI_194();
			Move_POI_187_POI_193();
			Move_POI_187_POI_185();
			Move_POI_187_POI_196();
			Move_POI_187_POI_184();
			Move_POI_187_POI_195();
			Move_POI_187_POI_198();
			Move_POI_187_POI_186();
			Move_POI_187_POI_197();
			Move_POI_187_POI_189();
			Move_POI_187_POI_201();
			Move_POI_187_POI_188();
			Move_POI_187_POI_199();
			Move_POI_187_POI_202();
			Move_POI_187_POI_200();
			Finish();
		}

		VALUE Move_POI_187_POI_190() [2, 2]
		MEETS {
			Visit_POI_190();
		}

		VALUE Move_POI_187_POI_192() [2, 4]
		MEETS {
			Visit_POI_192();
		}

		VALUE Move_POI_187_POI_191() [2, 2]
		MEETS {
			Visit_POI_191();
		}

		VALUE Move_POI_187_POI_183() [2, 2]
		MEETS {
			Visit_POI_183();
		}

		VALUE Move_POI_187_POI_194() [3, 5]
		MEETS {
			Visit_POI_194();
		}

		VALUE Move_POI_187_POI_193() [2, 2]
		MEETS {
			Visit_POI_193();
		}

		VALUE Move_POI_187_POI_185() [4, 6]
		MEETS {
			Visit_POI_185();
		}

		VALUE Move_POI_187_POI_196() [1, 1]
		MEETS {
			Visit_POI_196();
		}

		VALUE Move_POI_187_POI_184() [4, 6]
		MEETS {
			Visit_POI_184();
		}

		VALUE Move_POI_187_POI_195() [2, 2]
		MEETS {
			Visit_POI_195();
		}

		VALUE Move_POI_187_POI_198() [7, 11]
		MEETS {
			Visit_POI_198();
		}

		VALUE Move_POI_187_POI_186() [3, 5]
		MEETS {
			Visit_POI_186();
		}

		VALUE Move_POI_187_POI_197() [6, 8]
		MEETS {
			Visit_POI_197();
		}

		VALUE Move_POI_187_POI_189() [5, 7]
		MEETS {
			Visit_POI_189();
		}

		VALUE Move_POI_187_POI_201() [6, 10]
		MEETS {
			Visit_POI_201();
		}

		VALUE Move_POI_187_POI_188() [3, 5]
		MEETS {
			Visit_POI_188();
		}

		VALUE Move_POI_187_POI_199() [4, 6]
		MEETS {
			Visit_POI_199();
		}

		VALUE Move_POI_187_POI_202() [6, 8]
		MEETS {
			Visit_POI_202();
		}

		VALUE Move_POI_187_POI_200() [4, 6]
		MEETS {
			Visit_POI_200();
		}

		VALUE Visit_POI_198() [8, 12]
		MEETS {
			Move_POI_198_POI_190();
			Move_POI_198_POI_192();
			Move_POI_198_POI_191();
			Move_POI_198_POI_183();
			Move_POI_198_POI_194();
			Move_POI_198_POI_193();
			Move_POI_198_POI_185();
			Move_POI_198_POI_196();
			Move_POI_198_POI_184();
			Move_POI_198_POI_195();
			Move_POI_198_POI_187();
			Move_POI_198_POI_186();
			Move_POI_198_POI_197();
			Move_POI_198_POI_189();
			Move_POI_198_POI_201();
			Move_POI_198_POI_188();
			Move_POI_198_POI_199();
			Move_POI_198_POI_202();
			Move_POI_198_POI_200();
			Finish();
		}

		VALUE Move_POI_198_POI_190() [6, 8]
		MEETS {
			Visit_POI_190();
		}

		VALUE Move_POI_198_POI_192() [6, 10]
		MEETS {
			Visit_POI_192();
		}

		VALUE Move_POI_198_POI_191() [3, 5]
		MEETS {
			Visit_POI_191();
		}

		VALUE Move_POI_198_POI_183() [6, 10]
		MEETS {
			Visit_POI_183();
		}

		VALUE Move_POI_198_POI_194() [3, 5]
		MEETS {
			Visit_POI_194();
		}

		VALUE Move_POI_198_POI_193() [6, 8]
		MEETS {
			Visit_POI_193();
		}

		VALUE Move_POI_198_POI_185() [2, 2]
		MEETS {
			Visit_POI_185();
		}

		VALUE Move_POI_198_POI_196() [1, 1]
		MEETS {
			Visit_POI_196();
		}

		VALUE Move_POI_198_POI_184() [7, 11]
		MEETS {
			Visit_POI_184();
		}

		VALUE Move_POI_198_POI_195() [2, 2]
		MEETS {
			Visit_POI_195();
		}

		VALUE Move_POI_198_POI_187() [1, 1]
		MEETS {
			Visit_POI_187();
		}

		VALUE Move_POI_198_POI_186() [1, 1]
		MEETS {
			Visit_POI_186();
		}

		VALUE Move_POI_198_POI_197() [4, 6]
		MEETS {
			Visit_POI_197();
		}

		VALUE Move_POI_198_POI_189() [6, 10]
		MEETS {
			Visit_POI_189();
		}

		VALUE Move_POI_198_POI_201() [1, 1]
		MEETS {
			Visit_POI_201();
		}

		VALUE Move_POI_198_POI_188() [4, 6]
		MEETS {
			Visit_POI_188();
		}

		VALUE Move_POI_198_POI_199() [3, 5]
		MEETS {
			Visit_POI_199();
		}

		VALUE Move_POI_198_POI_202() [1, 1]
		MEETS {
			Visit_POI_202();
		}

		VALUE Move_POI_198_POI_200() [1, 1]
		MEETS {
			Visit_POI_200();
		}

		VALUE Visit_POI_186() [24, 36]
		MEETS {
			Move_POI_186_POI_190();
			Move_POI_186_POI_192();
			Move_POI_186_POI_191();
			Move_POI_186_POI_183();
			Move_POI_186_POI_194();
			Move_POI_186_POI_193();
			Move_POI_186_POI_185();
			Move_POI_186_POI_196();
			Move_POI_186_POI_184();
			Move_POI_186_POI_195();
			Move_POI_186_POI_187();
			Move_POI_186_POI_198();
			Move_POI_186_POI_197();
			Move_POI_186_POI_189();
			Move_POI_186_POI_201();
			Move_POI_186_POI_188();
			Move_POI_186_POI_199();
			Move_POI_186_POI_202();
			Move_POI_186_POI_200();
			Finish();
		}

		VALUE Move_POI_186_POI_190() [3, 5]
		MEETS {
			Visit_POI_190();
		}

		VALUE Move_POI_186_POI_192() [7, 11]
		MEETS {
			Visit_POI_192();
		}

		VALUE Move_POI_186_POI_191() [6, 10]
		MEETS {
			Visit_POI_191();
		}

		VALUE Move_POI_186_POI_183() [4, 6]
		MEETS {
			Visit_POI_183();
		}

		VALUE Move_POI_186_POI_194() [1, 1]
		MEETS {
			Visit_POI_194();
		}

		VALUE Move_POI_186_POI_193() [7, 11]
		MEETS {
			Visit_POI_193();
		}

		VALUE Move_POI_186_POI_185() [3, 5]
		MEETS {
			Visit_POI_185();
		}

		VALUE Move_POI_186_POI_196() [7, 11]
		MEETS {
			Visit_POI_196();
		}

		VALUE Move_POI_186_POI_184() [4, 6]
		MEETS {
			Visit_POI_184();
		}

		VALUE Move_POI_186_POI_195() [6, 8]
		MEETS {
			Visit_POI_195();
		}

		VALUE Move_POI_186_POI_187() [6, 8]
		MEETS {
			Visit_POI_187();
		}

		VALUE Move_POI_186_POI_198() [6, 8]
		MEETS {
			Visit_POI_198();
		}

		VALUE Move_POI_186_POI_197() [6, 10]
		MEETS {
			Visit_POI_197();
		}

		VALUE Move_POI_186_POI_189() [7, 11]
		MEETS {
			Visit_POI_189();
		}

		VALUE Move_POI_186_POI_201() [4, 6]
		MEETS {
			Visit_POI_201();
		}

		VALUE Move_POI_186_POI_188() [6, 10]
		MEETS {
			Visit_POI_188();
		}

		VALUE Move_POI_186_POI_199() [5, 7]
		MEETS {
			Visit_POI_199();
		}

		VALUE Move_POI_186_POI_202() [2, 2]
		MEETS {
			Visit_POI_202();
		}

		VALUE Move_POI_186_POI_200() [1, 1]
		MEETS {
			Visit_POI_200();
		}

		VALUE Visit_POI_197() [8, 12]
		MEETS {
			Move_POI_197_POI_190();
			Move_POI_197_POI_192();
			Move_POI_197_POI_191();
			Move_POI_197_POI_183();
			Move_POI_197_POI_194();
			Move_POI_197_POI_193();
			Move_POI_197_POI_185();
			Move_POI_197_POI_196();
			Move_POI_197_POI_184();
			Move_POI_197_POI_195();
			Move_POI_197_POI_187();
			Move_POI_197_POI_198();
			Move_POI_197_POI_186();
			Move_POI_197_POI_189();
			Move_POI_197_POI_201();
			Move_POI_197_POI_188();
			Move_POI_197_POI_199();
			Move_POI_197_POI_202();
			Move_POI_197_POI_200();
			Finish();
		}

		VALUE Move_POI_197_POI_190() [6, 10]
		MEETS {
			Visit_POI_190();
		}

		VALUE Move_POI_197_POI_192() [5, 7]
		MEETS {
			Visit_POI_192();
		}

		VALUE Move_POI_197_POI_191() [2, 4]
		MEETS {
			Visit_POI_191();
		}

		VALUE Move_POI_197_POI_183() [2, 2]
		MEETS {
			Visit_POI_183();
		}

		VALUE Move_POI_197_POI_194() [3, 5]
		MEETS {
			Visit_POI_194();
		}

		VALUE Move_POI_197_POI_193() [5, 7]
		MEETS {
			Visit_POI_193();
		}

		VALUE Move_POI_197_POI_185() [1, 1]
		MEETS {
			Visit_POI_185();
		}

		VALUE Move_POI_197_POI_196() [7, 11]
		MEETS {
			Visit_POI_196();
		}

		VALUE Move_POI_197_POI_184() [4, 6]
		MEETS {
			Visit_POI_184();
		}

		VALUE Move_POI_197_POI_195() [5, 7]
		MEETS {
			Visit_POI_195();
		}

		VALUE Move_POI_197_POI_187() [3, 5]
		MEETS {
			Visit_POI_187();
		}

		VALUE Move_POI_197_POI_198() [3, 5]
		MEETS {
			Visit_POI_198();
		}

		VALUE Move_POI_197_POI_186() [6, 10]
		MEETS {
			Visit_POI_186();
		}

		VALUE Move_POI_197_POI_189() [2, 4]
		MEETS {
			Visit_POI_189();
		}

		VALUE Move_POI_197_POI_201() [6, 10]
		MEETS {
			Visit_POI_201();
		}

		VALUE Move_POI_197_POI_188() [6, 8]
		MEETS {
			Visit_POI_188();
		}

		VALUE Move_POI_197_POI_199() [2, 4]
		MEETS {
			Visit_POI_199();
		}

		VALUE Move_POI_197_POI_202() [3, 5]
		MEETS {
			Visit_POI_202();
		}

		VALUE Move_POI_197_POI_200() [2, 2]
		MEETS {
			Visit_POI_200();
		}

		VALUE Visit_POI_189() [8, 12]
		MEETS {
			Move_POI_189_POI_190();
			Move_POI_189_POI_192();
			Move_POI_189_POI_191();
			Move_POI_189_POI_183();
			Move_POI_189_POI_194();
			Move_POI_189_POI_193();
			Move_POI_189_POI_185();
			Move_POI_189_POI_196();
			Move_POI_189_POI_184();
			Move_POI_189_POI_195();
			Move_POI_189_POI_187();
			Move_POI_189_POI_198();
			Move_POI_189_POI_186();
			Move_POI_189_POI_197();
			Move_POI_189_POI_201();
			Move_POI_189_POI_188();
			Move_POI_189_POI_199();
			Move_POI_189_POI_202();
			Move_POI_189_POI_200();
			Finish();
		}

		VALUE Move_POI_189_POI_190() [6, 8]
		MEETS {
			Visit_POI_190();
		}

		VALUE Move_POI_189_POI_192() [2, 2]
		MEETS {
			Visit_POI_192();
		}

		VALUE Move_POI_189_POI_191() [1, 1]
		MEETS {
			Visit_POI_191();
		}

		VALUE Move_POI_189_POI_183() [3, 5]
		MEETS {
			Visit_POI_183();
		}

		VALUE Move_POI_189_POI_194() [6, 10]
		MEETS {
			Visit_POI_194();
		}

		VALUE Move_POI_189_POI_193() [5, 7]
		MEETS {
			Visit_POI_193();
		}

		VALUE Move_POI_189_POI_185() [3, 5]
		MEETS {
			Visit_POI_185();
		}

		VALUE Move_POI_189_POI_196() [3, 5]
		MEETS {
			Visit_POI_196();
		}

		VALUE Move_POI_189_POI_184() [2, 2]
		MEETS {
			Visit_POI_184();
		}

		VALUE Move_POI_189_POI_195() [2, 4]
		MEETS {
			Visit_POI_195();
		}

		VALUE Move_POI_189_POI_187() [6, 8]
		MEETS {
			Visit_POI_187();
		}

		VALUE Move_POI_189_POI_198() [6, 10]
		MEETS {
			Visit_POI_198();
		}

		VALUE Move_POI_189_POI_186() [2, 4]
		MEETS {
			Visit_POI_186();
		}

		VALUE Move_POI_189_POI_197() [2, 2]
		MEETS {
			Visit_POI_197();
		}

		VALUE Move_POI_189_POI_201() [6, 10]
		MEETS {
			Visit_POI_201();
		}

		VALUE Move_POI_189_POI_188() [5, 7]
		MEETS {
			Visit_POI_188();
		}

		VALUE Move_POI_189_POI_199() [2, 2]
		MEETS {
			Visit_POI_199();
		}

		VALUE Move_POI_189_POI_202() [3, 5]
		MEETS {
			Visit_POI_202();
		}

		VALUE Move_POI_189_POI_200() [1, 1]
		MEETS {
			Visit_POI_200();
		}

		VALUE Visit_POI_201() [24, 36]
		MEETS {
			Move_POI_201_POI_190();
			Move_POI_201_POI_192();
			Move_POI_201_POI_191();
			Move_POI_201_POI_183();
			Move_POI_201_POI_194();
			Move_POI_201_POI_193();
			Move_POI_201_POI_185();
			Move_POI_201_POI_196();
			Move_POI_201_POI_184();
			Move_POI_201_POI_195();
			Move_POI_201_POI_187();
			Move_POI_201_POI_198();
			Move_POI_201_POI_186();
			Move_POI_201_POI_197();
			Move_POI_201_POI_189();
			Move_POI_201_POI_188();
			Move_POI_201_POI_199();
			Move_POI_201_POI_202();
			Move_POI_201_POI_200();
			Finish();
		}

		VALUE Move_POI_201_POI_190() [2, 4]
		MEETS {
			Visit_POI_190();
		}

		VALUE Move_POI_201_POI_192() [6, 10]
		MEETS {
			Visit_POI_192();
		}

		VALUE Move_POI_201_POI_191() [1, 1]
		MEETS {
			Visit_POI_191();
		}

		VALUE Move_POI_201_POI_183() [6, 10]
		MEETS {
			Visit_POI_183();
		}

		VALUE Move_POI_201_POI_194() [2, 4]
		MEETS {
			Visit_POI_194();
		}

		VALUE Move_POI_201_POI_193() [2, 2]
		MEETS {
			Visit_POI_193();
		}

		VALUE Move_POI_201_POI_185() [3, 5]
		MEETS {
			Visit_POI_185();
		}

		VALUE Move_POI_201_POI_196() [7, 11]
		MEETS {
			Visit_POI_196();
		}

		VALUE Move_POI_201_POI_184() [2, 4]
		MEETS {
			Visit_POI_184();
		}

		VALUE Move_POI_201_POI_195() [6, 10]
		MEETS {
			Visit_POI_195();
		}

		VALUE Move_POI_201_POI_187() [3, 5]
		MEETS {
			Visit_POI_187();
		}

		VALUE Move_POI_201_POI_198() [6, 8]
		MEETS {
			Visit_POI_198();
		}

		VALUE Move_POI_201_POI_186() [3, 5]
		MEETS {
			Visit_POI_186();
		}

		VALUE Move_POI_201_POI_197() [6, 8]
		MEETS {
			Visit_POI_197();
		}

		VALUE Move_POI_201_POI_189() [6, 8]
		MEETS {
			Visit_POI_189();
		}

		VALUE Move_POI_201_POI_188() [6, 10]
		MEETS {
			Visit_POI_188();
		}

		VALUE Move_POI_201_POI_199() [2, 2]
		MEETS {
			Visit_POI_199();
		}

		VALUE Move_POI_201_POI_202() [5, 7]
		MEETS {
			Visit_POI_202();
		}

		VALUE Move_POI_201_POI_200() [2, 2]
		MEETS {
			Visit_POI_200();
		}

		VALUE Visit_POI_188() [24, 36]
		MEETS {
			Move_POI_188_POI_190();
			Move_POI_188_POI_192();
			Move_POI_188_POI_191();
			Move_POI_188_POI_183();
			Move_POI_188_POI_194();
			Move_POI_188_POI_193();
			Move_POI_188_POI_185();
			Move_POI_188_POI_196();
			Move_POI_188_POI_184();
			Move_POI_188_POI_195();
			Move_POI_188_POI_187();
			Move_POI_188_POI_198();
			Move_POI_188_POI_186();
			Move_POI_188_POI_197();
			Move_POI_188_POI_189();
			Move_POI_188_POI_201();
			Move_POI_188_POI_199();
			Move_POI_188_POI_202();
			Move_POI_188_POI_200();
			Finish();
		}

		VALUE Move_POI_188_POI_190() [4, 6]
		MEETS {
			Visit_POI_190();
		}

		VALUE Move_POI_188_POI_192() [2, 4]
		MEETS {
			Visit_POI_192();
		}

		VALUE Move_POI_188_POI_191() [3, 5]
		MEETS {
			Visit_POI_191();
		}

		VALUE Move_POI_188_POI_183() [1, 1]
		MEETS {
			Visit_POI_183();
		}

		VALUE Move_POI_188_POI_194() [1, 1]
		MEETS {
			Visit_POI_194();
		}

		VALUE Move_POI_188_POI_193() [7, 11]
		MEETS {
			Visit_POI_193();
		}

		VALUE Move_POI_188_POI_185() [3, 5]
		MEETS {
			Visit_POI_185();
		}

		VALUE Move_POI_188_POI_196() [1, 1]
		MEETS {
			Visit_POI_196();
		}

		VALUE Move_POI_188_POI_184() [5, 7]
		MEETS {
			Visit_POI_184();
		}

		VALUE Move_POI_188_POI_195() [1, 1]
		MEETS {
			Visit_POI_195();
		}

		VALUE Move_POI_188_POI_187() [2, 2]
		MEETS {
			Visit_POI_187();
		}

		VALUE Move_POI_188_POI_198() [1, 1]
		MEETS {
			Visit_POI_198();
		}

		VALUE Move_POI_188_POI_186() [4, 6]
		MEETS {
			Visit_POI_186();
		}

		VALUE Move_POI_188_POI_197() [4, 6]
		MEETS {
			Visit_POI_197();
		}

		VALUE Move_POI_188_POI_189() [6, 10]
		MEETS {
			Visit_POI_189();
		}

		VALUE Move_POI_188_POI_201() [5, 7]
		MEETS {
			Visit_POI_201();
		}

		VALUE Move_POI_188_POI_199() [4, 6]
		MEETS {
			Visit_POI_199();
		}

		VALUE Move_POI_188_POI_202() [4, 6]
		MEETS {
			Visit_POI_202();
		}

		VALUE Move_POI_188_POI_200() [7, 11]
		MEETS {
			Visit_POI_200();
		}

		VALUE Visit_POI_199() [12, 18]
		MEETS {
			Move_POI_199_POI_190();
			Move_POI_199_POI_192();
			Move_POI_199_POI_191();
			Move_POI_199_POI_183();
			Move_POI_199_POI_194();
			Move_POI_199_POI_193();
			Move_POI_199_POI_185();
			Move_POI_199_POI_196();
			Move_POI_199_POI_184();
			Move_POI_199_POI_195();
			Move_POI_199_POI_187();
			Move_POI_199_POI_198();
			Move_POI_199_POI_186();
			Move_POI_199_POI_197();
			Move_POI_199_POI_189();
			Move_POI_199_POI_201();
			Move_POI_199_POI_188();
			Move_POI_199_POI_202();
			Move_POI_199_POI_200();
			Finish();
		}

		VALUE Move_POI_199_POI_190() [2, 4]
		MEETS {
			Visit_POI_190();
		}

		VALUE Move_POI_199_POI_192() [2, 2]
		MEETS {
			Visit_POI_192();
		}

		VALUE Move_POI_199_POI_191() [6, 10]
		MEETS {
			Visit_POI_191();
		}

		VALUE Move_POI_199_POI_183() [1, 1]
		MEETS {
			Visit_POI_183();
		}

		VALUE Move_POI_199_POI_194() [2, 2]
		MEETS {
			Visit_POI_194();
		}

		VALUE Move_POI_199_POI_193() [4, 6]
		MEETS {
			Visit_POI_193();
		}

		VALUE Move_POI_199_POI_185() [2, 2]
		MEETS {
			Visit_POI_185();
		}

		VALUE Move_POI_199_POI_196() [3, 5]
		MEETS {
			Visit_POI_196();
		}

		VALUE Move_POI_199_POI_184() [3, 5]
		MEETS {
			Visit_POI_184();
		}

		VALUE Move_POI_199_POI_195() [4, 6]
		MEETS {
			Visit_POI_195();
		}

		VALUE Move_POI_199_POI_187() [4, 6]
		MEETS {
			Visit_POI_187();
		}

		VALUE Move_POI_199_POI_198() [6, 10]
		MEETS {
			Visit_POI_198();
		}

		VALUE Move_POI_199_POI_186() [3, 5]
		MEETS {
			Visit_POI_186();
		}

		VALUE Move_POI_199_POI_197() [1, 1]
		MEETS {
			Visit_POI_197();
		}

		VALUE Move_POI_199_POI_189() [6, 10]
		MEETS {
			Visit_POI_189();
		}

		VALUE Move_POI_199_POI_201() [1, 1]
		MEETS {
			Visit_POI_201();
		}

		VALUE Move_POI_199_POI_188() [1, 1]
		MEETS {
			Visit_POI_188();
		}

		VALUE Move_POI_199_POI_202() [6, 8]
		MEETS {
			Visit_POI_202();
		}

		VALUE Move_POI_199_POI_200() [2, 4]
		MEETS {
			Visit_POI_200();
		}

		VALUE Visit_POI_202() [8, 12]
		MEETS {
			Move_POI_202_POI_190();
			Move_POI_202_POI_192();
			Move_POI_202_POI_191();
			Move_POI_202_POI_183();
			Move_POI_202_POI_194();
			Move_POI_202_POI_193();
			Move_POI_202_POI_185();
			Move_POI_202_POI_196();
			Move_POI_202_POI_184();
			Move_POI_202_POI_195();
			Move_POI_202_POI_187();
			Move_POI_202_POI_198();
			Move_POI_202_POI_186();
			Move_POI_202_POI_197();
			Move_POI_202_POI_189();
			Move_POI_202_POI_201();
			Move_POI_202_POI_188();
			Move_POI_202_POI_199();
			Move_POI_202_POI_200();
			Finish();
		}

		VALUE Move_POI_202_POI_190() [2, 4]
		MEETS {
			Visit_POI_190();
		}

		VALUE Move_POI_202_POI_192() [6, 8]
		MEETS {
			Visit_POI_192();
		}

		VALUE Move_POI_202_POI_191() [4, 6]
		MEETS {
			Visit_POI_191();
		}

		VALUE Move_POI_202_POI_183() [6, 10]
		MEETS {
			Visit_POI_183();
		}

		VALUE Move_POI_202_POI_194() [2, 2]
		MEETS {
			Visit_POI_194();
		}

		VALUE Move_POI_202_POI_193() [6, 8]
		MEETS {
			Visit_POI_193();
		}

		VALUE Move_POI_202_POI_185() [2, 4]
		MEETS {
			Visit_POI_185();
		}

		VALUE Move_POI_202_POI_196() [6, 10]
		MEETS {
			Visit_POI_196();
		}

		VALUE Move_POI_202_POI_184() [3, 5]
		MEETS {
			Visit_POI_184();
		}

		VALUE Move_POI_202_POI_195() [3, 5]
		MEETS {
			Visit_POI_195();
		}

		VALUE Move_POI_202_POI_187() [4, 6]
		MEETS {
			Visit_POI_187();
		}

		VALUE Move_POI_202_POI_198() [4, 6]
		MEETS {
			Visit_POI_198();
		}

		VALUE Move_POI_202_POI_186() [1, 1]
		MEETS {
			Visit_POI_186();
		}

		VALUE Move_POI_202_POI_197() [2, 4]
		MEETS {
			Visit_POI_197();
		}

		VALUE Move_POI_202_POI_189() [1, 1]
		MEETS {
			Visit_POI_189();
		}

		VALUE Move_POI_202_POI_201() [3, 5]
		MEETS {
			Visit_POI_201();
		}

		VALUE Move_POI_202_POI_188() [2, 2]
		MEETS {
			Visit_POI_188();
		}

		VALUE Move_POI_202_POI_199() [1, 1]
		MEETS {
			Visit_POI_199();
		}

		VALUE Move_POI_202_POI_200() [6, 10]
		MEETS {
			Visit_POI_200();
		}

		VALUE Visit_POI_200() [24, 36]
		MEETS {
			Move_POI_200_POI_190();
			Move_POI_200_POI_192();
			Move_POI_200_POI_191();
			Move_POI_200_POI_183();
			Move_POI_200_POI_194();
			Move_POI_200_POI_193();
			Move_POI_200_POI_185();
			Move_POI_200_POI_196();
			Move_POI_200_POI_184();
			Move_POI_200_POI_195();
			Move_POI_200_POI_187();
			Move_POI_200_POI_198();
			Move_POI_200_POI_186();
			Move_POI_200_POI_197();
			Move_POI_200_POI_189();
			Move_POI_200_POI_201();
			Move_POI_200_POI_188();
			Move_POI_200_POI_199();
			Move_POI_200_POI_202();
			Finish();
		}

		VALUE Move_POI_200_POI_190() [2, 4]
		MEETS {
			Visit_POI_190();
		}

		VALUE Move_POI_200_POI_192() [4, 6]
		MEETS {
			Visit_POI_192();
		}

		VALUE Move_POI_200_POI_191() [1, 1]
		MEETS {
			Visit_POI_191();
		}

		VALUE Move_POI_200_POI_183() [4, 6]
		MEETS {
			Visit_POI_183();
		}

		VALUE Move_POI_200_POI_194() [2, 2]
		MEETS {
			Visit_POI_194();
		}

		VALUE Move_POI_200_POI_193() [5, 7]
		MEETS {
			Visit_POI_193();
		}

		VALUE Move_POI_200_POI_185() [3, 5]
		MEETS {
			Visit_POI_185();
		}

		VALUE Move_POI_200_POI_196() [6, 10]
		MEETS {
			Visit_POI_196();
		}

		VALUE Move_POI_200_POI_184() [5, 7]
		MEETS {
			Visit_POI_184();
		}

		VALUE Move_POI_200_POI_195() [6, 10]
		MEETS {
			Visit_POI_195();
		}

		VALUE Move_POI_200_POI_187() [3, 5]
		MEETS {
			Visit_POI_187();
		}

		VALUE Move_POI_200_POI_198() [6, 10]
		MEETS {
			Visit_POI_198();
		}

		VALUE Move_POI_200_POI_186() [5, 7]
		MEETS {
			Visit_POI_186();
		}

		VALUE Move_POI_200_POI_197() [3, 5]
		MEETS {
			Visit_POI_197();
		}

		VALUE Move_POI_200_POI_189() [2, 4]
		MEETS {
			Visit_POI_189();
		}

		VALUE Move_POI_200_POI_201() [2, 4]
		MEETS {
			Visit_POI_201();
		}

		VALUE Move_POI_200_POI_188() [2, 2]
		MEETS {
			Visit_POI_188();
		}

		VALUE Move_POI_200_POI_199() [2, 4]
		MEETS {
			Visit_POI_199();
		}

		VALUE Move_POI_200_POI_202() [2, 4]
		MEETS {
			Visit_POI_202();
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

			cd0 <!> TripPath.hops.Visit_POI_190();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_192();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_191();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_183();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_194();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_193();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_185();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_196();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_184();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_195();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_187();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_198();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_186();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_197();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_189();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_201();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_188();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_199();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_202();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_200();
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

