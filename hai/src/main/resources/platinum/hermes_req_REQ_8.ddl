DOMAIN TRIP_PLANNING {

	TEMPORAL_MODULE tm = [0, 246], 1000;

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
		 Visit_POI_150(), Move_Home_POI_150(), Move_POI_150_POI_152(), Move_POI_150_POI_151(), Move_POI_150_POI_154(), Move_POI_150_POI_153(), Move_POI_150_POI_134(), Move_POI_150_POI_156(), Move_POI_150_POI_133(), Move_POI_150_POI_155(), Move_POI_150_POI_136(), Move_POI_150_POI_135(), Move_POI_150_POI_157(), Move_POI_150_POI_149(), Move_POI_150_POI_148(), Move_POI_150_POI_141(), Move_POI_150_POI_140(), Move_POI_150_POI_143(), Move_POI_150_POI_142(), Move_POI_150_POI_145(), Move_POI_150_POI_144(), Move_POI_150_POI_147(), Move_POI_150_POI_146(), Move_POI_150_POI_138(), Move_POI_150_POI_137(), Move_POI_150_POI_139(), 
		 Visit_POI_152(), Move_Home_POI_152(), Move_POI_152_POI_150(), Move_POI_152_POI_151(), Move_POI_152_POI_154(), Move_POI_152_POI_153(), Move_POI_152_POI_134(), Move_POI_152_POI_156(), Move_POI_152_POI_133(), Move_POI_152_POI_155(), Move_POI_152_POI_136(), Move_POI_152_POI_135(), Move_POI_152_POI_157(), Move_POI_152_POI_149(), Move_POI_152_POI_148(), Move_POI_152_POI_141(), Move_POI_152_POI_140(), Move_POI_152_POI_143(), Move_POI_152_POI_142(), Move_POI_152_POI_145(), Move_POI_152_POI_144(), Move_POI_152_POI_147(), Move_POI_152_POI_146(), Move_POI_152_POI_138(), Move_POI_152_POI_137(), Move_POI_152_POI_139(), 
		 Visit_POI_151(), Move_Home_POI_151(), Move_POI_151_POI_150(), Move_POI_151_POI_152(), Move_POI_151_POI_154(), Move_POI_151_POI_153(), Move_POI_151_POI_134(), Move_POI_151_POI_156(), Move_POI_151_POI_133(), Move_POI_151_POI_155(), Move_POI_151_POI_136(), Move_POI_151_POI_135(), Move_POI_151_POI_157(), Move_POI_151_POI_149(), Move_POI_151_POI_148(), Move_POI_151_POI_141(), Move_POI_151_POI_140(), Move_POI_151_POI_143(), Move_POI_151_POI_142(), Move_POI_151_POI_145(), Move_POI_151_POI_144(), Move_POI_151_POI_147(), Move_POI_151_POI_146(), Move_POI_151_POI_138(), Move_POI_151_POI_137(), Move_POI_151_POI_139(), 
		 Visit_POI_154(), Move_Home_POI_154(), Move_POI_154_POI_150(), Move_POI_154_POI_152(), Move_POI_154_POI_151(), Move_POI_154_POI_153(), Move_POI_154_POI_134(), Move_POI_154_POI_156(), Move_POI_154_POI_133(), Move_POI_154_POI_155(), Move_POI_154_POI_136(), Move_POI_154_POI_135(), Move_POI_154_POI_157(), Move_POI_154_POI_149(), Move_POI_154_POI_148(), Move_POI_154_POI_141(), Move_POI_154_POI_140(), Move_POI_154_POI_143(), Move_POI_154_POI_142(), Move_POI_154_POI_145(), Move_POI_154_POI_144(), Move_POI_154_POI_147(), Move_POI_154_POI_146(), Move_POI_154_POI_138(), Move_POI_154_POI_137(), Move_POI_154_POI_139(), 
		 Visit_POI_153(), Move_Home_POI_153(), Move_POI_153_POI_150(), Move_POI_153_POI_152(), Move_POI_153_POI_151(), Move_POI_153_POI_154(), Move_POI_153_POI_134(), Move_POI_153_POI_156(), Move_POI_153_POI_133(), Move_POI_153_POI_155(), Move_POI_153_POI_136(), Move_POI_153_POI_135(), Move_POI_153_POI_157(), Move_POI_153_POI_149(), Move_POI_153_POI_148(), Move_POI_153_POI_141(), Move_POI_153_POI_140(), Move_POI_153_POI_143(), Move_POI_153_POI_142(), Move_POI_153_POI_145(), Move_POI_153_POI_144(), Move_POI_153_POI_147(), Move_POI_153_POI_146(), Move_POI_153_POI_138(), Move_POI_153_POI_137(), Move_POI_153_POI_139(), 
		 Visit_POI_134(), Move_Home_POI_134(), Move_POI_134_POI_150(), Move_POI_134_POI_152(), Move_POI_134_POI_151(), Move_POI_134_POI_154(), Move_POI_134_POI_153(), Move_POI_134_POI_156(), Move_POI_134_POI_133(), Move_POI_134_POI_155(), Move_POI_134_POI_136(), Move_POI_134_POI_135(), Move_POI_134_POI_157(), Move_POI_134_POI_149(), Move_POI_134_POI_148(), Move_POI_134_POI_141(), Move_POI_134_POI_140(), Move_POI_134_POI_143(), Move_POI_134_POI_142(), Move_POI_134_POI_145(), Move_POI_134_POI_144(), Move_POI_134_POI_147(), Move_POI_134_POI_146(), Move_POI_134_POI_138(), Move_POI_134_POI_137(), Move_POI_134_POI_139(), 
		 Visit_POI_156(), Move_Home_POI_156(), Move_POI_156_POI_150(), Move_POI_156_POI_152(), Move_POI_156_POI_151(), Move_POI_156_POI_154(), Move_POI_156_POI_153(), Move_POI_156_POI_134(), Move_POI_156_POI_133(), Move_POI_156_POI_155(), Move_POI_156_POI_136(), Move_POI_156_POI_135(), Move_POI_156_POI_157(), Move_POI_156_POI_149(), Move_POI_156_POI_148(), Move_POI_156_POI_141(), Move_POI_156_POI_140(), Move_POI_156_POI_143(), Move_POI_156_POI_142(), Move_POI_156_POI_145(), Move_POI_156_POI_144(), Move_POI_156_POI_147(), Move_POI_156_POI_146(), Move_POI_156_POI_138(), Move_POI_156_POI_137(), Move_POI_156_POI_139(), 
		 Visit_POI_133(), Move_Home_POI_133(), Move_POI_133_POI_150(), Move_POI_133_POI_152(), Move_POI_133_POI_151(), Move_POI_133_POI_154(), Move_POI_133_POI_153(), Move_POI_133_POI_134(), Move_POI_133_POI_156(), Move_POI_133_POI_155(), Move_POI_133_POI_136(), Move_POI_133_POI_135(), Move_POI_133_POI_157(), Move_POI_133_POI_149(), Move_POI_133_POI_148(), Move_POI_133_POI_141(), Move_POI_133_POI_140(), Move_POI_133_POI_143(), Move_POI_133_POI_142(), Move_POI_133_POI_145(), Move_POI_133_POI_144(), Move_POI_133_POI_147(), Move_POI_133_POI_146(), Move_POI_133_POI_138(), Move_POI_133_POI_137(), Move_POI_133_POI_139(), 
		 Visit_POI_155(), Move_Home_POI_155(), Move_POI_155_POI_150(), Move_POI_155_POI_152(), Move_POI_155_POI_151(), Move_POI_155_POI_154(), Move_POI_155_POI_153(), Move_POI_155_POI_134(), Move_POI_155_POI_156(), Move_POI_155_POI_133(), Move_POI_155_POI_136(), Move_POI_155_POI_135(), Move_POI_155_POI_157(), Move_POI_155_POI_149(), Move_POI_155_POI_148(), Move_POI_155_POI_141(), Move_POI_155_POI_140(), Move_POI_155_POI_143(), Move_POI_155_POI_142(), Move_POI_155_POI_145(), Move_POI_155_POI_144(), Move_POI_155_POI_147(), Move_POI_155_POI_146(), Move_POI_155_POI_138(), Move_POI_155_POI_137(), Move_POI_155_POI_139(), 
		 Visit_POI_136(), Move_Home_POI_136(), Move_POI_136_POI_150(), Move_POI_136_POI_152(), Move_POI_136_POI_151(), Move_POI_136_POI_154(), Move_POI_136_POI_153(), Move_POI_136_POI_134(), Move_POI_136_POI_156(), Move_POI_136_POI_133(), Move_POI_136_POI_155(), Move_POI_136_POI_135(), Move_POI_136_POI_157(), Move_POI_136_POI_149(), Move_POI_136_POI_148(), Move_POI_136_POI_141(), Move_POI_136_POI_140(), Move_POI_136_POI_143(), Move_POI_136_POI_142(), Move_POI_136_POI_145(), Move_POI_136_POI_144(), Move_POI_136_POI_147(), Move_POI_136_POI_146(), Move_POI_136_POI_138(), Move_POI_136_POI_137(), Move_POI_136_POI_139(), 
		 Visit_POI_135(), Move_Home_POI_135(), Move_POI_135_POI_150(), Move_POI_135_POI_152(), Move_POI_135_POI_151(), Move_POI_135_POI_154(), Move_POI_135_POI_153(), Move_POI_135_POI_134(), Move_POI_135_POI_156(), Move_POI_135_POI_133(), Move_POI_135_POI_155(), Move_POI_135_POI_136(), Move_POI_135_POI_157(), Move_POI_135_POI_149(), Move_POI_135_POI_148(), Move_POI_135_POI_141(), Move_POI_135_POI_140(), Move_POI_135_POI_143(), Move_POI_135_POI_142(), Move_POI_135_POI_145(), Move_POI_135_POI_144(), Move_POI_135_POI_147(), Move_POI_135_POI_146(), Move_POI_135_POI_138(), Move_POI_135_POI_137(), Move_POI_135_POI_139(), 
		 Visit_POI_157(), Move_Home_POI_157(), Move_POI_157_POI_150(), Move_POI_157_POI_152(), Move_POI_157_POI_151(), Move_POI_157_POI_154(), Move_POI_157_POI_153(), Move_POI_157_POI_134(), Move_POI_157_POI_156(), Move_POI_157_POI_133(), Move_POI_157_POI_155(), Move_POI_157_POI_136(), Move_POI_157_POI_135(), Move_POI_157_POI_149(), Move_POI_157_POI_148(), Move_POI_157_POI_141(), Move_POI_157_POI_140(), Move_POI_157_POI_143(), Move_POI_157_POI_142(), Move_POI_157_POI_145(), Move_POI_157_POI_144(), Move_POI_157_POI_147(), Move_POI_157_POI_146(), Move_POI_157_POI_138(), Move_POI_157_POI_137(), Move_POI_157_POI_139(), 
		 Visit_POI_149(), Move_Home_POI_149(), Move_POI_149_POI_150(), Move_POI_149_POI_152(), Move_POI_149_POI_151(), Move_POI_149_POI_154(), Move_POI_149_POI_153(), Move_POI_149_POI_134(), Move_POI_149_POI_156(), Move_POI_149_POI_133(), Move_POI_149_POI_155(), Move_POI_149_POI_136(), Move_POI_149_POI_135(), Move_POI_149_POI_157(), Move_POI_149_POI_148(), Move_POI_149_POI_141(), Move_POI_149_POI_140(), Move_POI_149_POI_143(), Move_POI_149_POI_142(), Move_POI_149_POI_145(), Move_POI_149_POI_144(), Move_POI_149_POI_147(), Move_POI_149_POI_146(), Move_POI_149_POI_138(), Move_POI_149_POI_137(), Move_POI_149_POI_139(), 
		 Visit_POI_148(), Move_Home_POI_148(), Move_POI_148_POI_150(), Move_POI_148_POI_152(), Move_POI_148_POI_151(), Move_POI_148_POI_154(), Move_POI_148_POI_153(), Move_POI_148_POI_134(), Move_POI_148_POI_156(), Move_POI_148_POI_133(), Move_POI_148_POI_155(), Move_POI_148_POI_136(), Move_POI_148_POI_135(), Move_POI_148_POI_157(), Move_POI_148_POI_149(), Move_POI_148_POI_141(), Move_POI_148_POI_140(), Move_POI_148_POI_143(), Move_POI_148_POI_142(), Move_POI_148_POI_145(), Move_POI_148_POI_144(), Move_POI_148_POI_147(), Move_POI_148_POI_146(), Move_POI_148_POI_138(), Move_POI_148_POI_137(), Move_POI_148_POI_139(), 
		 Visit_POI_141(), Move_Home_POI_141(), Move_POI_141_POI_150(), Move_POI_141_POI_152(), Move_POI_141_POI_151(), Move_POI_141_POI_154(), Move_POI_141_POI_153(), Move_POI_141_POI_134(), Move_POI_141_POI_156(), Move_POI_141_POI_133(), Move_POI_141_POI_155(), Move_POI_141_POI_136(), Move_POI_141_POI_135(), Move_POI_141_POI_157(), Move_POI_141_POI_149(), Move_POI_141_POI_148(), Move_POI_141_POI_140(), Move_POI_141_POI_143(), Move_POI_141_POI_142(), Move_POI_141_POI_145(), Move_POI_141_POI_144(), Move_POI_141_POI_147(), Move_POI_141_POI_146(), Move_POI_141_POI_138(), Move_POI_141_POI_137(), Move_POI_141_POI_139(), 
		 Visit_POI_140(), Move_Home_POI_140(), Move_POI_140_POI_150(), Move_POI_140_POI_152(), Move_POI_140_POI_151(), Move_POI_140_POI_154(), Move_POI_140_POI_153(), Move_POI_140_POI_134(), Move_POI_140_POI_156(), Move_POI_140_POI_133(), Move_POI_140_POI_155(), Move_POI_140_POI_136(), Move_POI_140_POI_135(), Move_POI_140_POI_157(), Move_POI_140_POI_149(), Move_POI_140_POI_148(), Move_POI_140_POI_141(), Move_POI_140_POI_143(), Move_POI_140_POI_142(), Move_POI_140_POI_145(), Move_POI_140_POI_144(), Move_POI_140_POI_147(), Move_POI_140_POI_146(), Move_POI_140_POI_138(), Move_POI_140_POI_137(), Move_POI_140_POI_139(), 
		 Visit_POI_143(), Move_Home_POI_143(), Move_POI_143_POI_150(), Move_POI_143_POI_152(), Move_POI_143_POI_151(), Move_POI_143_POI_154(), Move_POI_143_POI_153(), Move_POI_143_POI_134(), Move_POI_143_POI_156(), Move_POI_143_POI_133(), Move_POI_143_POI_155(), Move_POI_143_POI_136(), Move_POI_143_POI_135(), Move_POI_143_POI_157(), Move_POI_143_POI_149(), Move_POI_143_POI_148(), Move_POI_143_POI_141(), Move_POI_143_POI_140(), Move_POI_143_POI_142(), Move_POI_143_POI_145(), Move_POI_143_POI_144(), Move_POI_143_POI_147(), Move_POI_143_POI_146(), Move_POI_143_POI_138(), Move_POI_143_POI_137(), Move_POI_143_POI_139(), 
		 Visit_POI_142(), Move_Home_POI_142(), Move_POI_142_POI_150(), Move_POI_142_POI_152(), Move_POI_142_POI_151(), Move_POI_142_POI_154(), Move_POI_142_POI_153(), Move_POI_142_POI_134(), Move_POI_142_POI_156(), Move_POI_142_POI_133(), Move_POI_142_POI_155(), Move_POI_142_POI_136(), Move_POI_142_POI_135(), Move_POI_142_POI_157(), Move_POI_142_POI_149(), Move_POI_142_POI_148(), Move_POI_142_POI_141(), Move_POI_142_POI_140(), Move_POI_142_POI_143(), Move_POI_142_POI_145(), Move_POI_142_POI_144(), Move_POI_142_POI_147(), Move_POI_142_POI_146(), Move_POI_142_POI_138(), Move_POI_142_POI_137(), Move_POI_142_POI_139(), 
		 Visit_POI_145(), Move_Home_POI_145(), Move_POI_145_POI_150(), Move_POI_145_POI_152(), Move_POI_145_POI_151(), Move_POI_145_POI_154(), Move_POI_145_POI_153(), Move_POI_145_POI_134(), Move_POI_145_POI_156(), Move_POI_145_POI_133(), Move_POI_145_POI_155(), Move_POI_145_POI_136(), Move_POI_145_POI_135(), Move_POI_145_POI_157(), Move_POI_145_POI_149(), Move_POI_145_POI_148(), Move_POI_145_POI_141(), Move_POI_145_POI_140(), Move_POI_145_POI_143(), Move_POI_145_POI_142(), Move_POI_145_POI_144(), Move_POI_145_POI_147(), Move_POI_145_POI_146(), Move_POI_145_POI_138(), Move_POI_145_POI_137(), Move_POI_145_POI_139(), 
		 Visit_POI_144(), Move_Home_POI_144(), Move_POI_144_POI_150(), Move_POI_144_POI_152(), Move_POI_144_POI_151(), Move_POI_144_POI_154(), Move_POI_144_POI_153(), Move_POI_144_POI_134(), Move_POI_144_POI_156(), Move_POI_144_POI_133(), Move_POI_144_POI_155(), Move_POI_144_POI_136(), Move_POI_144_POI_135(), Move_POI_144_POI_157(), Move_POI_144_POI_149(), Move_POI_144_POI_148(), Move_POI_144_POI_141(), Move_POI_144_POI_140(), Move_POI_144_POI_143(), Move_POI_144_POI_142(), Move_POI_144_POI_145(), Move_POI_144_POI_147(), Move_POI_144_POI_146(), Move_POI_144_POI_138(), Move_POI_144_POI_137(), Move_POI_144_POI_139(), 
		 Visit_POI_147(), Move_Home_POI_147(), Move_POI_147_POI_150(), Move_POI_147_POI_152(), Move_POI_147_POI_151(), Move_POI_147_POI_154(), Move_POI_147_POI_153(), Move_POI_147_POI_134(), Move_POI_147_POI_156(), Move_POI_147_POI_133(), Move_POI_147_POI_155(), Move_POI_147_POI_136(), Move_POI_147_POI_135(), Move_POI_147_POI_157(), Move_POI_147_POI_149(), Move_POI_147_POI_148(), Move_POI_147_POI_141(), Move_POI_147_POI_140(), Move_POI_147_POI_143(), Move_POI_147_POI_142(), Move_POI_147_POI_145(), Move_POI_147_POI_144(), Move_POI_147_POI_146(), Move_POI_147_POI_138(), Move_POI_147_POI_137(), Move_POI_147_POI_139(), 
		 Visit_POI_146(), Move_Home_POI_146(), Move_POI_146_POI_150(), Move_POI_146_POI_152(), Move_POI_146_POI_151(), Move_POI_146_POI_154(), Move_POI_146_POI_153(), Move_POI_146_POI_134(), Move_POI_146_POI_156(), Move_POI_146_POI_133(), Move_POI_146_POI_155(), Move_POI_146_POI_136(), Move_POI_146_POI_135(), Move_POI_146_POI_157(), Move_POI_146_POI_149(), Move_POI_146_POI_148(), Move_POI_146_POI_141(), Move_POI_146_POI_140(), Move_POI_146_POI_143(), Move_POI_146_POI_142(), Move_POI_146_POI_145(), Move_POI_146_POI_144(), Move_POI_146_POI_147(), Move_POI_146_POI_138(), Move_POI_146_POI_137(), Move_POI_146_POI_139(), 
		 Visit_POI_138(), Move_Home_POI_138(), Move_POI_138_POI_150(), Move_POI_138_POI_152(), Move_POI_138_POI_151(), Move_POI_138_POI_154(), Move_POI_138_POI_153(), Move_POI_138_POI_134(), Move_POI_138_POI_156(), Move_POI_138_POI_133(), Move_POI_138_POI_155(), Move_POI_138_POI_136(), Move_POI_138_POI_135(), Move_POI_138_POI_157(), Move_POI_138_POI_149(), Move_POI_138_POI_148(), Move_POI_138_POI_141(), Move_POI_138_POI_140(), Move_POI_138_POI_143(), Move_POI_138_POI_142(), Move_POI_138_POI_145(), Move_POI_138_POI_144(), Move_POI_138_POI_147(), Move_POI_138_POI_146(), Move_POI_138_POI_137(), Move_POI_138_POI_139(), 
		 Visit_POI_137(), Move_Home_POI_137(), Move_POI_137_POI_150(), Move_POI_137_POI_152(), Move_POI_137_POI_151(), Move_POI_137_POI_154(), Move_POI_137_POI_153(), Move_POI_137_POI_134(), Move_POI_137_POI_156(), Move_POI_137_POI_133(), Move_POI_137_POI_155(), Move_POI_137_POI_136(), Move_POI_137_POI_135(), Move_POI_137_POI_157(), Move_POI_137_POI_149(), Move_POI_137_POI_148(), Move_POI_137_POI_141(), Move_POI_137_POI_140(), Move_POI_137_POI_143(), Move_POI_137_POI_142(), Move_POI_137_POI_145(), Move_POI_137_POI_144(), Move_POI_137_POI_147(), Move_POI_137_POI_146(), Move_POI_137_POI_138(), Move_POI_137_POI_139(), 
		 Visit_POI_139(), Move_Home_POI_139(), Move_POI_139_POI_150(), Move_POI_139_POI_152(), Move_POI_139_POI_151(), Move_POI_139_POI_154(), Move_POI_139_POI_153(), Move_POI_139_POI_134(), Move_POI_139_POI_156(), Move_POI_139_POI_133(), Move_POI_139_POI_155(), Move_POI_139_POI_136(), Move_POI_139_POI_135(), Move_POI_139_POI_157(), Move_POI_139_POI_149(), Move_POI_139_POI_148(), Move_POI_139_POI_141(), Move_POI_139_POI_140(), Move_POI_139_POI_143(), Move_POI_139_POI_142(), Move_POI_139_POI_145(), Move_POI_139_POI_144(), Move_POI_139_POI_147(), Move_POI_139_POI_146(), Move_POI_139_POI_138(), Move_POI_139_POI_137(), 
	) {

		VALUE Home() [1, 1]
		MEETS {
			Move_Home_POI_150();
			Move_Home_POI_152();
			Move_Home_POI_151();
			Move_Home_POI_154();
			Move_Home_POI_153();
			Move_Home_POI_134();
			Move_Home_POI_156();
			Move_Home_POI_133();
			Move_Home_POI_155();
			Move_Home_POI_136();
			Move_Home_POI_135();
			Move_Home_POI_157();
			Move_Home_POI_149();
			Move_Home_POI_148();
			Move_Home_POI_141();
			Move_Home_POI_140();
			Move_Home_POI_143();
			Move_Home_POI_142();
			Move_Home_POI_145();
			Move_Home_POI_144();
			Move_Home_POI_147();
			Move_Home_POI_146();
			Move_Home_POI_138();
			Move_Home_POI_137();
			Move_Home_POI_139();
		}

		VALUE Finish() [1, +INF]
		MEETS {
			Home();
		}

		VALUE Move_Home_POI_150() [3, 5]
		MEETS {
			Visit_POI_150();
		}

		VALUE Move_Home_POI_152() [1, 1]
		MEETS {
			Visit_POI_152();
		}

		VALUE Move_Home_POI_151() [2, 4]
		MEETS {
			Visit_POI_151();
		}

		VALUE Move_Home_POI_154() [3, 5]
		MEETS {
			Visit_POI_154();
		}

		VALUE Move_Home_POI_153() [4, 6]
		MEETS {
			Visit_POI_153();
		}

		VALUE Move_Home_POI_134() [4, 6]
		MEETS {
			Visit_POI_134();
		}

		VALUE Move_Home_POI_156() [7, 11]
		MEETS {
			Visit_POI_156();
		}

		VALUE Move_Home_POI_133() [7, 11]
		MEETS {
			Visit_POI_133();
		}

		VALUE Move_Home_POI_155() [3, 5]
		MEETS {
			Visit_POI_155();
		}

		VALUE Move_Home_POI_136() [2, 2]
		MEETS {
			Visit_POI_136();
		}

		VALUE Move_Home_POI_135() [6, 10]
		MEETS {
			Visit_POI_135();
		}

		VALUE Move_Home_POI_157() [2, 2]
		MEETS {
			Visit_POI_157();
		}

		VALUE Move_Home_POI_149() [2, 2]
		MEETS {
			Visit_POI_149();
		}

		VALUE Move_Home_POI_148() [4, 6]
		MEETS {
			Visit_POI_148();
		}

		VALUE Move_Home_POI_141() [6, 8]
		MEETS {
			Visit_POI_141();
		}

		VALUE Move_Home_POI_140() [6, 8]
		MEETS {
			Visit_POI_140();
		}

		VALUE Move_Home_POI_143() [2, 4]
		MEETS {
			Visit_POI_143();
		}

		VALUE Move_Home_POI_142() [6, 8]
		MEETS {
			Visit_POI_142();
		}

		VALUE Move_Home_POI_145() [6, 8]
		MEETS {
			Visit_POI_145();
		}

		VALUE Move_Home_POI_144() [2, 2]
		MEETS {
			Visit_POI_144();
		}

		VALUE Move_Home_POI_147() [2, 4]
		MEETS {
			Visit_POI_147();
		}

		VALUE Move_Home_POI_146() [3, 5]
		MEETS {
			Visit_POI_146();
		}

		VALUE Move_Home_POI_138() [2, 2]
		MEETS {
			Visit_POI_138();
		}

		VALUE Move_Home_POI_137() [7, 11]
		MEETS {
			Visit_POI_137();
		}

		VALUE Move_Home_POI_139() [6, 8]
		MEETS {
			Visit_POI_139();
		}

		VALUE Visit_POI_150() [24, 36]
		MEETS {
			Move_POI_150_POI_152();
			Move_POI_150_POI_151();
			Move_POI_150_POI_154();
			Move_POI_150_POI_153();
			Move_POI_150_POI_134();
			Move_POI_150_POI_156();
			Move_POI_150_POI_133();
			Move_POI_150_POI_155();
			Move_POI_150_POI_136();
			Move_POI_150_POI_135();
			Move_POI_150_POI_157();
			Move_POI_150_POI_149();
			Move_POI_150_POI_148();
			Move_POI_150_POI_141();
			Move_POI_150_POI_140();
			Move_POI_150_POI_143();
			Move_POI_150_POI_142();
			Move_POI_150_POI_145();
			Move_POI_150_POI_144();
			Move_POI_150_POI_147();
			Move_POI_150_POI_146();
			Move_POI_150_POI_138();
			Move_POI_150_POI_137();
			Move_POI_150_POI_139();
			Finish();
		}

		VALUE Move_POI_150_POI_152() [2, 4]
		MEETS {
			Visit_POI_152();
		}

		VALUE Move_POI_150_POI_151() [6, 8]
		MEETS {
			Visit_POI_151();
		}

		VALUE Move_POI_150_POI_154() [6, 10]
		MEETS {
			Visit_POI_154();
		}

		VALUE Move_POI_150_POI_153() [2, 2]
		MEETS {
			Visit_POI_153();
		}

		VALUE Move_POI_150_POI_134() [2, 4]
		MEETS {
			Visit_POI_134();
		}

		VALUE Move_POI_150_POI_156() [5, 7]
		MEETS {
			Visit_POI_156();
		}

		VALUE Move_POI_150_POI_133() [3, 5]
		MEETS {
			Visit_POI_133();
		}

		VALUE Move_POI_150_POI_155() [6, 8]
		MEETS {
			Visit_POI_155();
		}

		VALUE Move_POI_150_POI_136() [2, 2]
		MEETS {
			Visit_POI_136();
		}

		VALUE Move_POI_150_POI_135() [4, 6]
		MEETS {
			Visit_POI_135();
		}

		VALUE Move_POI_150_POI_157() [4, 6]
		MEETS {
			Visit_POI_157();
		}

		VALUE Move_POI_150_POI_149() [6, 10]
		MEETS {
			Visit_POI_149();
		}

		VALUE Move_POI_150_POI_148() [2, 2]
		MEETS {
			Visit_POI_148();
		}

		VALUE Move_POI_150_POI_141() [5, 7]
		MEETS {
			Visit_POI_141();
		}

		VALUE Move_POI_150_POI_140() [2, 4]
		MEETS {
			Visit_POI_140();
		}

		VALUE Move_POI_150_POI_143() [5, 7]
		MEETS {
			Visit_POI_143();
		}

		VALUE Move_POI_150_POI_142() [7, 11]
		MEETS {
			Visit_POI_142();
		}

		VALUE Move_POI_150_POI_145() [4, 6]
		MEETS {
			Visit_POI_145();
		}

		VALUE Move_POI_150_POI_144() [2, 4]
		MEETS {
			Visit_POI_144();
		}

		VALUE Move_POI_150_POI_147() [6, 8]
		MEETS {
			Visit_POI_147();
		}

		VALUE Move_POI_150_POI_146() [3, 5]
		MEETS {
			Visit_POI_146();
		}

		VALUE Move_POI_150_POI_138() [4, 6]
		MEETS {
			Visit_POI_138();
		}

		VALUE Move_POI_150_POI_137() [6, 10]
		MEETS {
			Visit_POI_137();
		}

		VALUE Move_POI_150_POI_139() [4, 6]
		MEETS {
			Visit_POI_139();
		}

		VALUE Visit_POI_152() [96, 144]
		MEETS {
			Move_POI_152_POI_150();
			Move_POI_152_POI_151();
			Move_POI_152_POI_154();
			Move_POI_152_POI_153();
			Move_POI_152_POI_134();
			Move_POI_152_POI_156();
			Move_POI_152_POI_133();
			Move_POI_152_POI_155();
			Move_POI_152_POI_136();
			Move_POI_152_POI_135();
			Move_POI_152_POI_157();
			Move_POI_152_POI_149();
			Move_POI_152_POI_148();
			Move_POI_152_POI_141();
			Move_POI_152_POI_140();
			Move_POI_152_POI_143();
			Move_POI_152_POI_142();
			Move_POI_152_POI_145();
			Move_POI_152_POI_144();
			Move_POI_152_POI_147();
			Move_POI_152_POI_146();
			Move_POI_152_POI_138();
			Move_POI_152_POI_137();
			Move_POI_152_POI_139();
			Finish();
		}

		VALUE Move_POI_152_POI_150() [7, 11]
		MEETS {
			Visit_POI_150();
		}

		VALUE Move_POI_152_POI_151() [6, 8]
		MEETS {
			Visit_POI_151();
		}

		VALUE Move_POI_152_POI_154() [6, 8]
		MEETS {
			Visit_POI_154();
		}

		VALUE Move_POI_152_POI_153() [5, 7]
		MEETS {
			Visit_POI_153();
		}

		VALUE Move_POI_152_POI_134() [7, 11]
		MEETS {
			Visit_POI_134();
		}

		VALUE Move_POI_152_POI_156() [4, 6]
		MEETS {
			Visit_POI_156();
		}

		VALUE Move_POI_152_POI_133() [2, 4]
		MEETS {
			Visit_POI_133();
		}

		VALUE Move_POI_152_POI_155() [2, 2]
		MEETS {
			Visit_POI_155();
		}

		VALUE Move_POI_152_POI_136() [6, 8]
		MEETS {
			Visit_POI_136();
		}

		VALUE Move_POI_152_POI_135() [7, 11]
		MEETS {
			Visit_POI_135();
		}

		VALUE Move_POI_152_POI_157() [5, 7]
		MEETS {
			Visit_POI_157();
		}

		VALUE Move_POI_152_POI_149() [7, 11]
		MEETS {
			Visit_POI_149();
		}

		VALUE Move_POI_152_POI_148() [3, 5]
		MEETS {
			Visit_POI_148();
		}

		VALUE Move_POI_152_POI_141() [2, 2]
		MEETS {
			Visit_POI_141();
		}

		VALUE Move_POI_152_POI_140() [2, 4]
		MEETS {
			Visit_POI_140();
		}

		VALUE Move_POI_152_POI_143() [4, 6]
		MEETS {
			Visit_POI_143();
		}

		VALUE Move_POI_152_POI_142() [2, 2]
		MEETS {
			Visit_POI_142();
		}

		VALUE Move_POI_152_POI_145() [6, 8]
		MEETS {
			Visit_POI_145();
		}

		VALUE Move_POI_152_POI_144() [2, 4]
		MEETS {
			Visit_POI_144();
		}

		VALUE Move_POI_152_POI_147() [2, 4]
		MEETS {
			Visit_POI_147();
		}

		VALUE Move_POI_152_POI_146() [7, 11]
		MEETS {
			Visit_POI_146();
		}

		VALUE Move_POI_152_POI_138() [7, 11]
		MEETS {
			Visit_POI_138();
		}

		VALUE Move_POI_152_POI_137() [6, 10]
		MEETS {
			Visit_POI_137();
		}

		VALUE Move_POI_152_POI_139() [1, 1]
		MEETS {
			Visit_POI_139();
		}

		VALUE Visit_POI_151() [16, 24]
		MEETS {
			Move_POI_151_POI_150();
			Move_POI_151_POI_152();
			Move_POI_151_POI_154();
			Move_POI_151_POI_153();
			Move_POI_151_POI_134();
			Move_POI_151_POI_156();
			Move_POI_151_POI_133();
			Move_POI_151_POI_155();
			Move_POI_151_POI_136();
			Move_POI_151_POI_135();
			Move_POI_151_POI_157();
			Move_POI_151_POI_149();
			Move_POI_151_POI_148();
			Move_POI_151_POI_141();
			Move_POI_151_POI_140();
			Move_POI_151_POI_143();
			Move_POI_151_POI_142();
			Move_POI_151_POI_145();
			Move_POI_151_POI_144();
			Move_POI_151_POI_147();
			Move_POI_151_POI_146();
			Move_POI_151_POI_138();
			Move_POI_151_POI_137();
			Move_POI_151_POI_139();
			Finish();
		}

		VALUE Move_POI_151_POI_150() [4, 6]
		MEETS {
			Visit_POI_150();
		}

		VALUE Move_POI_151_POI_152() [3, 5]
		MEETS {
			Visit_POI_152();
		}

		VALUE Move_POI_151_POI_154() [3, 5]
		MEETS {
			Visit_POI_154();
		}

		VALUE Move_POI_151_POI_153() [2, 2]
		MEETS {
			Visit_POI_153();
		}

		VALUE Move_POI_151_POI_134() [2, 4]
		MEETS {
			Visit_POI_134();
		}

		VALUE Move_POI_151_POI_156() [6, 8]
		MEETS {
			Visit_POI_156();
		}

		VALUE Move_POI_151_POI_133() [2, 4]
		MEETS {
			Visit_POI_133();
		}

		VALUE Move_POI_151_POI_155() [6, 8]
		MEETS {
			Visit_POI_155();
		}

		VALUE Move_POI_151_POI_136() [4, 6]
		MEETS {
			Visit_POI_136();
		}

		VALUE Move_POI_151_POI_135() [7, 11]
		MEETS {
			Visit_POI_135();
		}

		VALUE Move_POI_151_POI_157() [1, 1]
		MEETS {
			Visit_POI_157();
		}

		VALUE Move_POI_151_POI_149() [2, 4]
		MEETS {
			Visit_POI_149();
		}

		VALUE Move_POI_151_POI_148() [5, 7]
		MEETS {
			Visit_POI_148();
		}

		VALUE Move_POI_151_POI_141() [6, 8]
		MEETS {
			Visit_POI_141();
		}

		VALUE Move_POI_151_POI_140() [2, 2]
		MEETS {
			Visit_POI_140();
		}

		VALUE Move_POI_151_POI_143() [4, 6]
		MEETS {
			Visit_POI_143();
		}

		VALUE Move_POI_151_POI_142() [1, 1]
		MEETS {
			Visit_POI_142();
		}

		VALUE Move_POI_151_POI_145() [6, 8]
		MEETS {
			Visit_POI_145();
		}

		VALUE Move_POI_151_POI_144() [7, 11]
		MEETS {
			Visit_POI_144();
		}

		VALUE Move_POI_151_POI_147() [5, 7]
		MEETS {
			Visit_POI_147();
		}

		VALUE Move_POI_151_POI_146() [5, 7]
		MEETS {
			Visit_POI_146();
		}

		VALUE Move_POI_151_POI_138() [2, 4]
		MEETS {
			Visit_POI_138();
		}

		VALUE Move_POI_151_POI_137() [5, 7]
		MEETS {
			Visit_POI_137();
		}

		VALUE Move_POI_151_POI_139() [2, 2]
		MEETS {
			Visit_POI_139();
		}

		VALUE Visit_POI_154() [16, 24]
		MEETS {
			Move_POI_154_POI_150();
			Move_POI_154_POI_152();
			Move_POI_154_POI_151();
			Move_POI_154_POI_153();
			Move_POI_154_POI_134();
			Move_POI_154_POI_156();
			Move_POI_154_POI_133();
			Move_POI_154_POI_155();
			Move_POI_154_POI_136();
			Move_POI_154_POI_135();
			Move_POI_154_POI_157();
			Move_POI_154_POI_149();
			Move_POI_154_POI_148();
			Move_POI_154_POI_141();
			Move_POI_154_POI_140();
			Move_POI_154_POI_143();
			Move_POI_154_POI_142();
			Move_POI_154_POI_145();
			Move_POI_154_POI_144();
			Move_POI_154_POI_147();
			Move_POI_154_POI_146();
			Move_POI_154_POI_138();
			Move_POI_154_POI_137();
			Move_POI_154_POI_139();
			Finish();
		}

		VALUE Move_POI_154_POI_150() [3, 5]
		MEETS {
			Visit_POI_150();
		}

		VALUE Move_POI_154_POI_152() [4, 6]
		MEETS {
			Visit_POI_152();
		}

		VALUE Move_POI_154_POI_151() [2, 4]
		MEETS {
			Visit_POI_151();
		}

		VALUE Move_POI_154_POI_153() [6, 8]
		MEETS {
			Visit_POI_153();
		}

		VALUE Move_POI_154_POI_134() [4, 6]
		MEETS {
			Visit_POI_134();
		}

		VALUE Move_POI_154_POI_156() [7, 11]
		MEETS {
			Visit_POI_156();
		}

		VALUE Move_POI_154_POI_133() [1, 1]
		MEETS {
			Visit_POI_133();
		}

		VALUE Move_POI_154_POI_155() [6, 8]
		MEETS {
			Visit_POI_155();
		}

		VALUE Move_POI_154_POI_136() [3, 5]
		MEETS {
			Visit_POI_136();
		}

		VALUE Move_POI_154_POI_135() [6, 8]
		MEETS {
			Visit_POI_135();
		}

		VALUE Move_POI_154_POI_157() [4, 6]
		MEETS {
			Visit_POI_157();
		}

		VALUE Move_POI_154_POI_149() [6, 8]
		MEETS {
			Visit_POI_149();
		}

		VALUE Move_POI_154_POI_148() [7, 11]
		MEETS {
			Visit_POI_148();
		}

		VALUE Move_POI_154_POI_141() [2, 4]
		MEETS {
			Visit_POI_141();
		}

		VALUE Move_POI_154_POI_140() [1, 1]
		MEETS {
			Visit_POI_140();
		}

		VALUE Move_POI_154_POI_143() [2, 4]
		MEETS {
			Visit_POI_143();
		}

		VALUE Move_POI_154_POI_142() [2, 4]
		MEETS {
			Visit_POI_142();
		}

		VALUE Move_POI_154_POI_145() [7, 11]
		MEETS {
			Visit_POI_145();
		}

		VALUE Move_POI_154_POI_144() [3, 5]
		MEETS {
			Visit_POI_144();
		}

		VALUE Move_POI_154_POI_147() [5, 7]
		MEETS {
			Visit_POI_147();
		}

		VALUE Move_POI_154_POI_146() [5, 7]
		MEETS {
			Visit_POI_146();
		}

		VALUE Move_POI_154_POI_138() [2, 2]
		MEETS {
			Visit_POI_138();
		}

		VALUE Move_POI_154_POI_137() [2, 4]
		MEETS {
			Visit_POI_137();
		}

		VALUE Move_POI_154_POI_139() [5, 7]
		MEETS {
			Visit_POI_139();
		}

		VALUE Visit_POI_153() [24, 36]
		MEETS {
			Move_POI_153_POI_150();
			Move_POI_153_POI_152();
			Move_POI_153_POI_151();
			Move_POI_153_POI_154();
			Move_POI_153_POI_134();
			Move_POI_153_POI_156();
			Move_POI_153_POI_133();
			Move_POI_153_POI_155();
			Move_POI_153_POI_136();
			Move_POI_153_POI_135();
			Move_POI_153_POI_157();
			Move_POI_153_POI_149();
			Move_POI_153_POI_148();
			Move_POI_153_POI_141();
			Move_POI_153_POI_140();
			Move_POI_153_POI_143();
			Move_POI_153_POI_142();
			Move_POI_153_POI_145();
			Move_POI_153_POI_144();
			Move_POI_153_POI_147();
			Move_POI_153_POI_146();
			Move_POI_153_POI_138();
			Move_POI_153_POI_137();
			Move_POI_153_POI_139();
			Finish();
		}

		VALUE Move_POI_153_POI_150() [6, 8]
		MEETS {
			Visit_POI_150();
		}

		VALUE Move_POI_153_POI_152() [7, 11]
		MEETS {
			Visit_POI_152();
		}

		VALUE Move_POI_153_POI_151() [4, 6]
		MEETS {
			Visit_POI_151();
		}

		VALUE Move_POI_153_POI_154() [3, 5]
		MEETS {
			Visit_POI_154();
		}

		VALUE Move_POI_153_POI_134() [1, 1]
		MEETS {
			Visit_POI_134();
		}

		VALUE Move_POI_153_POI_156() [2, 4]
		MEETS {
			Visit_POI_156();
		}

		VALUE Move_POI_153_POI_133() [3, 5]
		MEETS {
			Visit_POI_133();
		}

		VALUE Move_POI_153_POI_155() [4, 6]
		MEETS {
			Visit_POI_155();
		}

		VALUE Move_POI_153_POI_136() [7, 11]
		MEETS {
			Visit_POI_136();
		}

		VALUE Move_POI_153_POI_135() [6, 10]
		MEETS {
			Visit_POI_135();
		}

		VALUE Move_POI_153_POI_157() [5, 7]
		MEETS {
			Visit_POI_157();
		}

		VALUE Move_POI_153_POI_149() [1, 1]
		MEETS {
			Visit_POI_149();
		}

		VALUE Move_POI_153_POI_148() [4, 6]
		MEETS {
			Visit_POI_148();
		}

		VALUE Move_POI_153_POI_141() [4, 6]
		MEETS {
			Visit_POI_141();
		}

		VALUE Move_POI_153_POI_140() [5, 7]
		MEETS {
			Visit_POI_140();
		}

		VALUE Move_POI_153_POI_143() [6, 10]
		MEETS {
			Visit_POI_143();
		}

		VALUE Move_POI_153_POI_142() [7, 11]
		MEETS {
			Visit_POI_142();
		}

		VALUE Move_POI_153_POI_145() [6, 10]
		MEETS {
			Visit_POI_145();
		}

		VALUE Move_POI_153_POI_144() [2, 2]
		MEETS {
			Visit_POI_144();
		}

		VALUE Move_POI_153_POI_147() [1, 1]
		MEETS {
			Visit_POI_147();
		}

		VALUE Move_POI_153_POI_146() [2, 2]
		MEETS {
			Visit_POI_146();
		}

		VALUE Move_POI_153_POI_138() [1, 1]
		MEETS {
			Visit_POI_138();
		}

		VALUE Move_POI_153_POI_137() [6, 8]
		MEETS {
			Visit_POI_137();
		}

		VALUE Move_POI_153_POI_139() [6, 10]
		MEETS {
			Visit_POI_139();
		}

		VALUE Visit_POI_134() [48, 72]
		MEETS {
			Move_POI_134_POI_150();
			Move_POI_134_POI_152();
			Move_POI_134_POI_151();
			Move_POI_134_POI_154();
			Move_POI_134_POI_153();
			Move_POI_134_POI_156();
			Move_POI_134_POI_133();
			Move_POI_134_POI_155();
			Move_POI_134_POI_136();
			Move_POI_134_POI_135();
			Move_POI_134_POI_157();
			Move_POI_134_POI_149();
			Move_POI_134_POI_148();
			Move_POI_134_POI_141();
			Move_POI_134_POI_140();
			Move_POI_134_POI_143();
			Move_POI_134_POI_142();
			Move_POI_134_POI_145();
			Move_POI_134_POI_144();
			Move_POI_134_POI_147();
			Move_POI_134_POI_146();
			Move_POI_134_POI_138();
			Move_POI_134_POI_137();
			Move_POI_134_POI_139();
			Finish();
		}

		VALUE Move_POI_134_POI_150() [2, 4]
		MEETS {
			Visit_POI_150();
		}

		VALUE Move_POI_134_POI_152() [2, 2]
		MEETS {
			Visit_POI_152();
		}

		VALUE Move_POI_134_POI_151() [2, 4]
		MEETS {
			Visit_POI_151();
		}

		VALUE Move_POI_134_POI_154() [2, 2]
		MEETS {
			Visit_POI_154();
		}

		VALUE Move_POI_134_POI_153() [7, 11]
		MEETS {
			Visit_POI_153();
		}

		VALUE Move_POI_134_POI_156() [6, 8]
		MEETS {
			Visit_POI_156();
		}

		VALUE Move_POI_134_POI_133() [6, 10]
		MEETS {
			Visit_POI_133();
		}

		VALUE Move_POI_134_POI_155() [2, 2]
		MEETS {
			Visit_POI_155();
		}

		VALUE Move_POI_134_POI_136() [7, 11]
		MEETS {
			Visit_POI_136();
		}

		VALUE Move_POI_134_POI_135() [4, 6]
		MEETS {
			Visit_POI_135();
		}

		VALUE Move_POI_134_POI_157() [7, 11]
		MEETS {
			Visit_POI_157();
		}

		VALUE Move_POI_134_POI_149() [7, 11]
		MEETS {
			Visit_POI_149();
		}

		VALUE Move_POI_134_POI_148() [4, 6]
		MEETS {
			Visit_POI_148();
		}

		VALUE Move_POI_134_POI_141() [6, 10]
		MEETS {
			Visit_POI_141();
		}

		VALUE Move_POI_134_POI_140() [1, 1]
		MEETS {
			Visit_POI_140();
		}

		VALUE Move_POI_134_POI_143() [3, 5]
		MEETS {
			Visit_POI_143();
		}

		VALUE Move_POI_134_POI_142() [1, 1]
		MEETS {
			Visit_POI_142();
		}

		VALUE Move_POI_134_POI_145() [4, 6]
		MEETS {
			Visit_POI_145();
		}

		VALUE Move_POI_134_POI_144() [4, 6]
		MEETS {
			Visit_POI_144();
		}

		VALUE Move_POI_134_POI_147() [5, 7]
		MEETS {
			Visit_POI_147();
		}

		VALUE Move_POI_134_POI_146() [6, 10]
		MEETS {
			Visit_POI_146();
		}

		VALUE Move_POI_134_POI_138() [1, 1]
		MEETS {
			Visit_POI_138();
		}

		VALUE Move_POI_134_POI_137() [2, 2]
		MEETS {
			Visit_POI_137();
		}

		VALUE Move_POI_134_POI_139() [7, 11]
		MEETS {
			Visit_POI_139();
		}

		VALUE Visit_POI_156() [48, 72]
		MEETS {
			Move_POI_156_POI_150();
			Move_POI_156_POI_152();
			Move_POI_156_POI_151();
			Move_POI_156_POI_154();
			Move_POI_156_POI_153();
			Move_POI_156_POI_134();
			Move_POI_156_POI_133();
			Move_POI_156_POI_155();
			Move_POI_156_POI_136();
			Move_POI_156_POI_135();
			Move_POI_156_POI_157();
			Move_POI_156_POI_149();
			Move_POI_156_POI_148();
			Move_POI_156_POI_141();
			Move_POI_156_POI_140();
			Move_POI_156_POI_143();
			Move_POI_156_POI_142();
			Move_POI_156_POI_145();
			Move_POI_156_POI_144();
			Move_POI_156_POI_147();
			Move_POI_156_POI_146();
			Move_POI_156_POI_138();
			Move_POI_156_POI_137();
			Move_POI_156_POI_139();
			Finish();
		}

		VALUE Move_POI_156_POI_150() [4, 6]
		MEETS {
			Visit_POI_150();
		}

		VALUE Move_POI_156_POI_152() [7, 11]
		MEETS {
			Visit_POI_152();
		}

		VALUE Move_POI_156_POI_151() [3, 5]
		MEETS {
			Visit_POI_151();
		}

		VALUE Move_POI_156_POI_154() [7, 11]
		MEETS {
			Visit_POI_154();
		}

		VALUE Move_POI_156_POI_153() [2, 4]
		MEETS {
			Visit_POI_153();
		}

		VALUE Move_POI_156_POI_134() [6, 8]
		MEETS {
			Visit_POI_134();
		}

		VALUE Move_POI_156_POI_133() [3, 5]
		MEETS {
			Visit_POI_133();
		}

		VALUE Move_POI_156_POI_155() [6, 10]
		MEETS {
			Visit_POI_155();
		}

		VALUE Move_POI_156_POI_136() [2, 4]
		MEETS {
			Visit_POI_136();
		}

		VALUE Move_POI_156_POI_135() [1, 1]
		MEETS {
			Visit_POI_135();
		}

		VALUE Move_POI_156_POI_157() [6, 10]
		MEETS {
			Visit_POI_157();
		}

		VALUE Move_POI_156_POI_149() [1, 1]
		MEETS {
			Visit_POI_149();
		}

		VALUE Move_POI_156_POI_148() [2, 4]
		MEETS {
			Visit_POI_148();
		}

		VALUE Move_POI_156_POI_141() [2, 2]
		MEETS {
			Visit_POI_141();
		}

		VALUE Move_POI_156_POI_140() [2, 4]
		MEETS {
			Visit_POI_140();
		}

		VALUE Move_POI_156_POI_143() [4, 6]
		MEETS {
			Visit_POI_143();
		}

		VALUE Move_POI_156_POI_142() [2, 2]
		MEETS {
			Visit_POI_142();
		}

		VALUE Move_POI_156_POI_145() [2, 2]
		MEETS {
			Visit_POI_145();
		}

		VALUE Move_POI_156_POI_144() [2, 4]
		MEETS {
			Visit_POI_144();
		}

		VALUE Move_POI_156_POI_147() [4, 6]
		MEETS {
			Visit_POI_147();
		}

		VALUE Move_POI_156_POI_146() [5, 7]
		MEETS {
			Visit_POI_146();
		}

		VALUE Move_POI_156_POI_138() [6, 10]
		MEETS {
			Visit_POI_138();
		}

		VALUE Move_POI_156_POI_137() [6, 8]
		MEETS {
			Visit_POI_137();
		}

		VALUE Move_POI_156_POI_139() [5, 7]
		MEETS {
			Visit_POI_139();
		}

		VALUE Visit_POI_133() [24, 36]
		MEETS {
			Move_POI_133_POI_150();
			Move_POI_133_POI_152();
			Move_POI_133_POI_151();
			Move_POI_133_POI_154();
			Move_POI_133_POI_153();
			Move_POI_133_POI_134();
			Move_POI_133_POI_156();
			Move_POI_133_POI_155();
			Move_POI_133_POI_136();
			Move_POI_133_POI_135();
			Move_POI_133_POI_157();
			Move_POI_133_POI_149();
			Move_POI_133_POI_148();
			Move_POI_133_POI_141();
			Move_POI_133_POI_140();
			Move_POI_133_POI_143();
			Move_POI_133_POI_142();
			Move_POI_133_POI_145();
			Move_POI_133_POI_144();
			Move_POI_133_POI_147();
			Move_POI_133_POI_146();
			Move_POI_133_POI_138();
			Move_POI_133_POI_137();
			Move_POI_133_POI_139();
			Finish();
		}

		VALUE Move_POI_133_POI_150() [1, 1]
		MEETS {
			Visit_POI_150();
		}

		VALUE Move_POI_133_POI_152() [5, 7]
		MEETS {
			Visit_POI_152();
		}

		VALUE Move_POI_133_POI_151() [3, 5]
		MEETS {
			Visit_POI_151();
		}

		VALUE Move_POI_133_POI_154() [7, 11]
		MEETS {
			Visit_POI_154();
		}

		VALUE Move_POI_133_POI_153() [1, 1]
		MEETS {
			Visit_POI_153();
		}

		VALUE Move_POI_133_POI_134() [6, 10]
		MEETS {
			Visit_POI_134();
		}

		VALUE Move_POI_133_POI_156() [6, 8]
		MEETS {
			Visit_POI_156();
		}

		VALUE Move_POI_133_POI_155() [6, 10]
		MEETS {
			Visit_POI_155();
		}

		VALUE Move_POI_133_POI_136() [4, 6]
		MEETS {
			Visit_POI_136();
		}

		VALUE Move_POI_133_POI_135() [5, 7]
		MEETS {
			Visit_POI_135();
		}

		VALUE Move_POI_133_POI_157() [6, 10]
		MEETS {
			Visit_POI_157();
		}

		VALUE Move_POI_133_POI_149() [2, 2]
		MEETS {
			Visit_POI_149();
		}

		VALUE Move_POI_133_POI_148() [7, 11]
		MEETS {
			Visit_POI_148();
		}

		VALUE Move_POI_133_POI_141() [3, 5]
		MEETS {
			Visit_POI_141();
		}

		VALUE Move_POI_133_POI_140() [5, 7]
		MEETS {
			Visit_POI_140();
		}

		VALUE Move_POI_133_POI_143() [3, 5]
		MEETS {
			Visit_POI_143();
		}

		VALUE Move_POI_133_POI_142() [1, 1]
		MEETS {
			Visit_POI_142();
		}

		VALUE Move_POI_133_POI_145() [3, 5]
		MEETS {
			Visit_POI_145();
		}

		VALUE Move_POI_133_POI_144() [5, 7]
		MEETS {
			Visit_POI_144();
		}

		VALUE Move_POI_133_POI_147() [2, 4]
		MEETS {
			Visit_POI_147();
		}

		VALUE Move_POI_133_POI_146() [3, 5]
		MEETS {
			Visit_POI_146();
		}

		VALUE Move_POI_133_POI_138() [6, 8]
		MEETS {
			Visit_POI_138();
		}

		VALUE Move_POI_133_POI_137() [2, 4]
		MEETS {
			Visit_POI_137();
		}

		VALUE Move_POI_133_POI_139() [1, 1]
		MEETS {
			Visit_POI_139();
		}

		VALUE Visit_POI_155() [8, 12]
		MEETS {
			Move_POI_155_POI_150();
			Move_POI_155_POI_152();
			Move_POI_155_POI_151();
			Move_POI_155_POI_154();
			Move_POI_155_POI_153();
			Move_POI_155_POI_134();
			Move_POI_155_POI_156();
			Move_POI_155_POI_133();
			Move_POI_155_POI_136();
			Move_POI_155_POI_135();
			Move_POI_155_POI_157();
			Move_POI_155_POI_149();
			Move_POI_155_POI_148();
			Move_POI_155_POI_141();
			Move_POI_155_POI_140();
			Move_POI_155_POI_143();
			Move_POI_155_POI_142();
			Move_POI_155_POI_145();
			Move_POI_155_POI_144();
			Move_POI_155_POI_147();
			Move_POI_155_POI_146();
			Move_POI_155_POI_138();
			Move_POI_155_POI_137();
			Move_POI_155_POI_139();
			Finish();
		}

		VALUE Move_POI_155_POI_150() [6, 10]
		MEETS {
			Visit_POI_150();
		}

		VALUE Move_POI_155_POI_152() [3, 5]
		MEETS {
			Visit_POI_152();
		}

		VALUE Move_POI_155_POI_151() [2, 4]
		MEETS {
			Visit_POI_151();
		}

		VALUE Move_POI_155_POI_154() [1, 1]
		MEETS {
			Visit_POI_154();
		}

		VALUE Move_POI_155_POI_153() [2, 4]
		MEETS {
			Visit_POI_153();
		}

		VALUE Move_POI_155_POI_134() [2, 4]
		MEETS {
			Visit_POI_134();
		}

		VALUE Move_POI_155_POI_156() [7, 11]
		MEETS {
			Visit_POI_156();
		}

		VALUE Move_POI_155_POI_133() [3, 5]
		MEETS {
			Visit_POI_133();
		}

		VALUE Move_POI_155_POI_136() [6, 10]
		MEETS {
			Visit_POI_136();
		}

		VALUE Move_POI_155_POI_135() [7, 11]
		MEETS {
			Visit_POI_135();
		}

		VALUE Move_POI_155_POI_157() [2, 4]
		MEETS {
			Visit_POI_157();
		}

		VALUE Move_POI_155_POI_149() [6, 10]
		MEETS {
			Visit_POI_149();
		}

		VALUE Move_POI_155_POI_148() [5, 7]
		MEETS {
			Visit_POI_148();
		}

		VALUE Move_POI_155_POI_141() [7, 11]
		MEETS {
			Visit_POI_141();
		}

		VALUE Move_POI_155_POI_140() [6, 8]
		MEETS {
			Visit_POI_140();
		}

		VALUE Move_POI_155_POI_143() [6, 10]
		MEETS {
			Visit_POI_143();
		}

		VALUE Move_POI_155_POI_142() [3, 5]
		MEETS {
			Visit_POI_142();
		}

		VALUE Move_POI_155_POI_145() [4, 6]
		MEETS {
			Visit_POI_145();
		}

		VALUE Move_POI_155_POI_144() [2, 4]
		MEETS {
			Visit_POI_144();
		}

		VALUE Move_POI_155_POI_147() [1, 1]
		MEETS {
			Visit_POI_147();
		}

		VALUE Move_POI_155_POI_146() [6, 10]
		MEETS {
			Visit_POI_146();
		}

		VALUE Move_POI_155_POI_138() [7, 11]
		MEETS {
			Visit_POI_138();
		}

		VALUE Move_POI_155_POI_137() [5, 7]
		MEETS {
			Visit_POI_137();
		}

		VALUE Move_POI_155_POI_139() [2, 4]
		MEETS {
			Visit_POI_139();
		}

		VALUE Visit_POI_136() [36, 54]
		MEETS {
			Move_POI_136_POI_150();
			Move_POI_136_POI_152();
			Move_POI_136_POI_151();
			Move_POI_136_POI_154();
			Move_POI_136_POI_153();
			Move_POI_136_POI_134();
			Move_POI_136_POI_156();
			Move_POI_136_POI_133();
			Move_POI_136_POI_155();
			Move_POI_136_POI_135();
			Move_POI_136_POI_157();
			Move_POI_136_POI_149();
			Move_POI_136_POI_148();
			Move_POI_136_POI_141();
			Move_POI_136_POI_140();
			Move_POI_136_POI_143();
			Move_POI_136_POI_142();
			Move_POI_136_POI_145();
			Move_POI_136_POI_144();
			Move_POI_136_POI_147();
			Move_POI_136_POI_146();
			Move_POI_136_POI_138();
			Move_POI_136_POI_137();
			Move_POI_136_POI_139();
			Finish();
		}

		VALUE Move_POI_136_POI_150() [3, 5]
		MEETS {
			Visit_POI_150();
		}

		VALUE Move_POI_136_POI_152() [4, 6]
		MEETS {
			Visit_POI_152();
		}

		VALUE Move_POI_136_POI_151() [6, 8]
		MEETS {
			Visit_POI_151();
		}

		VALUE Move_POI_136_POI_154() [2, 4]
		MEETS {
			Visit_POI_154();
		}

		VALUE Move_POI_136_POI_153() [7, 11]
		MEETS {
			Visit_POI_153();
		}

		VALUE Move_POI_136_POI_134() [1, 1]
		MEETS {
			Visit_POI_134();
		}

		VALUE Move_POI_136_POI_156() [1, 1]
		MEETS {
			Visit_POI_156();
		}

		VALUE Move_POI_136_POI_133() [6, 10]
		MEETS {
			Visit_POI_133();
		}

		VALUE Move_POI_136_POI_155() [7, 11]
		MEETS {
			Visit_POI_155();
		}

		VALUE Move_POI_136_POI_135() [3, 5]
		MEETS {
			Visit_POI_135();
		}

		VALUE Move_POI_136_POI_157() [6, 8]
		MEETS {
			Visit_POI_157();
		}

		VALUE Move_POI_136_POI_149() [2, 4]
		MEETS {
			Visit_POI_149();
		}

		VALUE Move_POI_136_POI_148() [1, 1]
		MEETS {
			Visit_POI_148();
		}

		VALUE Move_POI_136_POI_141() [2, 2]
		MEETS {
			Visit_POI_141();
		}

		VALUE Move_POI_136_POI_140() [4, 6]
		MEETS {
			Visit_POI_140();
		}

		VALUE Move_POI_136_POI_143() [6, 10]
		MEETS {
			Visit_POI_143();
		}

		VALUE Move_POI_136_POI_142() [7, 11]
		MEETS {
			Visit_POI_142();
		}

		VALUE Move_POI_136_POI_145() [4, 6]
		MEETS {
			Visit_POI_145();
		}

		VALUE Move_POI_136_POI_144() [7, 11]
		MEETS {
			Visit_POI_144();
		}

		VALUE Move_POI_136_POI_147() [3, 5]
		MEETS {
			Visit_POI_147();
		}

		VALUE Move_POI_136_POI_146() [3, 5]
		MEETS {
			Visit_POI_146();
		}

		VALUE Move_POI_136_POI_138() [6, 10]
		MEETS {
			Visit_POI_138();
		}

		VALUE Move_POI_136_POI_137() [2, 4]
		MEETS {
			Visit_POI_137();
		}

		VALUE Move_POI_136_POI_139() [4, 6]
		MEETS {
			Visit_POI_139();
		}

		VALUE Visit_POI_135() [8, 12]
		MEETS {
			Move_POI_135_POI_150();
			Move_POI_135_POI_152();
			Move_POI_135_POI_151();
			Move_POI_135_POI_154();
			Move_POI_135_POI_153();
			Move_POI_135_POI_134();
			Move_POI_135_POI_156();
			Move_POI_135_POI_133();
			Move_POI_135_POI_155();
			Move_POI_135_POI_136();
			Move_POI_135_POI_157();
			Move_POI_135_POI_149();
			Move_POI_135_POI_148();
			Move_POI_135_POI_141();
			Move_POI_135_POI_140();
			Move_POI_135_POI_143();
			Move_POI_135_POI_142();
			Move_POI_135_POI_145();
			Move_POI_135_POI_144();
			Move_POI_135_POI_147();
			Move_POI_135_POI_146();
			Move_POI_135_POI_138();
			Move_POI_135_POI_137();
			Move_POI_135_POI_139();
			Finish();
		}

		VALUE Move_POI_135_POI_150() [6, 8]
		MEETS {
			Visit_POI_150();
		}

		VALUE Move_POI_135_POI_152() [3, 5]
		MEETS {
			Visit_POI_152();
		}

		VALUE Move_POI_135_POI_151() [7, 11]
		MEETS {
			Visit_POI_151();
		}

		VALUE Move_POI_135_POI_154() [1, 1]
		MEETS {
			Visit_POI_154();
		}

		VALUE Move_POI_135_POI_153() [6, 8]
		MEETS {
			Visit_POI_153();
		}

		VALUE Move_POI_135_POI_134() [1, 1]
		MEETS {
			Visit_POI_134();
		}

		VALUE Move_POI_135_POI_156() [6, 8]
		MEETS {
			Visit_POI_156();
		}

		VALUE Move_POI_135_POI_133() [4, 6]
		MEETS {
			Visit_POI_133();
		}

		VALUE Move_POI_135_POI_155() [4, 6]
		MEETS {
			Visit_POI_155();
		}

		VALUE Move_POI_135_POI_136() [6, 10]
		MEETS {
			Visit_POI_136();
		}

		VALUE Move_POI_135_POI_157() [1, 1]
		MEETS {
			Visit_POI_157();
		}

		VALUE Move_POI_135_POI_149() [6, 10]
		MEETS {
			Visit_POI_149();
		}

		VALUE Move_POI_135_POI_148() [7, 11]
		MEETS {
			Visit_POI_148();
		}

		VALUE Move_POI_135_POI_141() [7, 11]
		MEETS {
			Visit_POI_141();
		}

		VALUE Move_POI_135_POI_140() [2, 4]
		MEETS {
			Visit_POI_140();
		}

		VALUE Move_POI_135_POI_143() [6, 10]
		MEETS {
			Visit_POI_143();
		}

		VALUE Move_POI_135_POI_142() [2, 4]
		MEETS {
			Visit_POI_142();
		}

		VALUE Move_POI_135_POI_145() [7, 11]
		MEETS {
			Visit_POI_145();
		}

		VALUE Move_POI_135_POI_144() [4, 6]
		MEETS {
			Visit_POI_144();
		}

		VALUE Move_POI_135_POI_147() [1, 1]
		MEETS {
			Visit_POI_147();
		}

		VALUE Move_POI_135_POI_146() [6, 10]
		MEETS {
			Visit_POI_146();
		}

		VALUE Move_POI_135_POI_138() [2, 2]
		MEETS {
			Visit_POI_138();
		}

		VALUE Move_POI_135_POI_137() [6, 8]
		MEETS {
			Visit_POI_137();
		}

		VALUE Move_POI_135_POI_139() [2, 4]
		MEETS {
			Visit_POI_139();
		}

		VALUE Visit_POI_157() [8, 12]
		MEETS {
			Move_POI_157_POI_150();
			Move_POI_157_POI_152();
			Move_POI_157_POI_151();
			Move_POI_157_POI_154();
			Move_POI_157_POI_153();
			Move_POI_157_POI_134();
			Move_POI_157_POI_156();
			Move_POI_157_POI_133();
			Move_POI_157_POI_155();
			Move_POI_157_POI_136();
			Move_POI_157_POI_135();
			Move_POI_157_POI_149();
			Move_POI_157_POI_148();
			Move_POI_157_POI_141();
			Move_POI_157_POI_140();
			Move_POI_157_POI_143();
			Move_POI_157_POI_142();
			Move_POI_157_POI_145();
			Move_POI_157_POI_144();
			Move_POI_157_POI_147();
			Move_POI_157_POI_146();
			Move_POI_157_POI_138();
			Move_POI_157_POI_137();
			Move_POI_157_POI_139();
			Finish();
		}

		VALUE Move_POI_157_POI_150() [4, 6]
		MEETS {
			Visit_POI_150();
		}

		VALUE Move_POI_157_POI_152() [7, 11]
		MEETS {
			Visit_POI_152();
		}

		VALUE Move_POI_157_POI_151() [5, 7]
		MEETS {
			Visit_POI_151();
		}

		VALUE Move_POI_157_POI_154() [5, 7]
		MEETS {
			Visit_POI_154();
		}

		VALUE Move_POI_157_POI_153() [3, 5]
		MEETS {
			Visit_POI_153();
		}

		VALUE Move_POI_157_POI_134() [5, 7]
		MEETS {
			Visit_POI_134();
		}

		VALUE Move_POI_157_POI_156() [6, 8]
		MEETS {
			Visit_POI_156();
		}

		VALUE Move_POI_157_POI_133() [7, 11]
		MEETS {
			Visit_POI_133();
		}

		VALUE Move_POI_157_POI_155() [6, 8]
		MEETS {
			Visit_POI_155();
		}

		VALUE Move_POI_157_POI_136() [2, 4]
		MEETS {
			Visit_POI_136();
		}

		VALUE Move_POI_157_POI_135() [7, 11]
		MEETS {
			Visit_POI_135();
		}

		VALUE Move_POI_157_POI_149() [7, 11]
		MEETS {
			Visit_POI_149();
		}

		VALUE Move_POI_157_POI_148() [6, 10]
		MEETS {
			Visit_POI_148();
		}

		VALUE Move_POI_157_POI_141() [7, 11]
		MEETS {
			Visit_POI_141();
		}

		VALUE Move_POI_157_POI_140() [7, 11]
		MEETS {
			Visit_POI_140();
		}

		VALUE Move_POI_157_POI_143() [1, 1]
		MEETS {
			Visit_POI_143();
		}

		VALUE Move_POI_157_POI_142() [3, 5]
		MEETS {
			Visit_POI_142();
		}

		VALUE Move_POI_157_POI_145() [2, 4]
		MEETS {
			Visit_POI_145();
		}

		VALUE Move_POI_157_POI_144() [6, 8]
		MEETS {
			Visit_POI_144();
		}

		VALUE Move_POI_157_POI_147() [5, 7]
		MEETS {
			Visit_POI_147();
		}

		VALUE Move_POI_157_POI_146() [3, 5]
		MEETS {
			Visit_POI_146();
		}

		VALUE Move_POI_157_POI_138() [6, 10]
		MEETS {
			Visit_POI_138();
		}

		VALUE Move_POI_157_POI_137() [7, 11]
		MEETS {
			Visit_POI_137();
		}

		VALUE Move_POI_157_POI_139() [7, 11]
		MEETS {
			Visit_POI_139();
		}

		VALUE Visit_POI_149() [24, 36]
		MEETS {
			Move_POI_149_POI_150();
			Move_POI_149_POI_152();
			Move_POI_149_POI_151();
			Move_POI_149_POI_154();
			Move_POI_149_POI_153();
			Move_POI_149_POI_134();
			Move_POI_149_POI_156();
			Move_POI_149_POI_133();
			Move_POI_149_POI_155();
			Move_POI_149_POI_136();
			Move_POI_149_POI_135();
			Move_POI_149_POI_157();
			Move_POI_149_POI_148();
			Move_POI_149_POI_141();
			Move_POI_149_POI_140();
			Move_POI_149_POI_143();
			Move_POI_149_POI_142();
			Move_POI_149_POI_145();
			Move_POI_149_POI_144();
			Move_POI_149_POI_147();
			Move_POI_149_POI_146();
			Move_POI_149_POI_138();
			Move_POI_149_POI_137();
			Move_POI_149_POI_139();
			Finish();
		}

		VALUE Move_POI_149_POI_150() [3, 5]
		MEETS {
			Visit_POI_150();
		}

		VALUE Move_POI_149_POI_152() [4, 6]
		MEETS {
			Visit_POI_152();
		}

		VALUE Move_POI_149_POI_151() [4, 6]
		MEETS {
			Visit_POI_151();
		}

		VALUE Move_POI_149_POI_154() [6, 10]
		MEETS {
			Visit_POI_154();
		}

		VALUE Move_POI_149_POI_153() [1, 1]
		MEETS {
			Visit_POI_153();
		}

		VALUE Move_POI_149_POI_134() [6, 10]
		MEETS {
			Visit_POI_134();
		}

		VALUE Move_POI_149_POI_156() [5, 7]
		MEETS {
			Visit_POI_156();
		}

		VALUE Move_POI_149_POI_133() [5, 7]
		MEETS {
			Visit_POI_133();
		}

		VALUE Move_POI_149_POI_155() [2, 4]
		MEETS {
			Visit_POI_155();
		}

		VALUE Move_POI_149_POI_136() [6, 10]
		MEETS {
			Visit_POI_136();
		}

		VALUE Move_POI_149_POI_135() [5, 7]
		MEETS {
			Visit_POI_135();
		}

		VALUE Move_POI_149_POI_157() [2, 4]
		MEETS {
			Visit_POI_157();
		}

		VALUE Move_POI_149_POI_148() [4, 6]
		MEETS {
			Visit_POI_148();
		}

		VALUE Move_POI_149_POI_141() [1, 1]
		MEETS {
			Visit_POI_141();
		}

		VALUE Move_POI_149_POI_140() [6, 8]
		MEETS {
			Visit_POI_140();
		}

		VALUE Move_POI_149_POI_143() [4, 6]
		MEETS {
			Visit_POI_143();
		}

		VALUE Move_POI_149_POI_142() [2, 2]
		MEETS {
			Visit_POI_142();
		}

		VALUE Move_POI_149_POI_145() [1, 1]
		MEETS {
			Visit_POI_145();
		}

		VALUE Move_POI_149_POI_144() [3, 5]
		MEETS {
			Visit_POI_144();
		}

		VALUE Move_POI_149_POI_147() [1, 1]
		MEETS {
			Visit_POI_147();
		}

		VALUE Move_POI_149_POI_146() [6, 10]
		MEETS {
			Visit_POI_146();
		}

		VALUE Move_POI_149_POI_138() [3, 5]
		MEETS {
			Visit_POI_138();
		}

		VALUE Move_POI_149_POI_137() [5, 7]
		MEETS {
			Visit_POI_137();
		}

		VALUE Move_POI_149_POI_139() [3, 5]
		MEETS {
			Visit_POI_139();
		}

		VALUE Visit_POI_148() [8, 12]
		MEETS {
			Move_POI_148_POI_150();
			Move_POI_148_POI_152();
			Move_POI_148_POI_151();
			Move_POI_148_POI_154();
			Move_POI_148_POI_153();
			Move_POI_148_POI_134();
			Move_POI_148_POI_156();
			Move_POI_148_POI_133();
			Move_POI_148_POI_155();
			Move_POI_148_POI_136();
			Move_POI_148_POI_135();
			Move_POI_148_POI_157();
			Move_POI_148_POI_149();
			Move_POI_148_POI_141();
			Move_POI_148_POI_140();
			Move_POI_148_POI_143();
			Move_POI_148_POI_142();
			Move_POI_148_POI_145();
			Move_POI_148_POI_144();
			Move_POI_148_POI_147();
			Move_POI_148_POI_146();
			Move_POI_148_POI_138();
			Move_POI_148_POI_137();
			Move_POI_148_POI_139();
			Finish();
		}

		VALUE Move_POI_148_POI_150() [2, 4]
		MEETS {
			Visit_POI_150();
		}

		VALUE Move_POI_148_POI_152() [7, 11]
		MEETS {
			Visit_POI_152();
		}

		VALUE Move_POI_148_POI_151() [1, 1]
		MEETS {
			Visit_POI_151();
		}

		VALUE Move_POI_148_POI_154() [3, 5]
		MEETS {
			Visit_POI_154();
		}

		VALUE Move_POI_148_POI_153() [5, 7]
		MEETS {
			Visit_POI_153();
		}

		VALUE Move_POI_148_POI_134() [2, 4]
		MEETS {
			Visit_POI_134();
		}

		VALUE Move_POI_148_POI_156() [7, 11]
		MEETS {
			Visit_POI_156();
		}

		VALUE Move_POI_148_POI_133() [7, 11]
		MEETS {
			Visit_POI_133();
		}

		VALUE Move_POI_148_POI_155() [5, 7]
		MEETS {
			Visit_POI_155();
		}

		VALUE Move_POI_148_POI_136() [2, 2]
		MEETS {
			Visit_POI_136();
		}

		VALUE Move_POI_148_POI_135() [5, 7]
		MEETS {
			Visit_POI_135();
		}

		VALUE Move_POI_148_POI_157() [6, 8]
		MEETS {
			Visit_POI_157();
		}

		VALUE Move_POI_148_POI_149() [4, 6]
		MEETS {
			Visit_POI_149();
		}

		VALUE Move_POI_148_POI_141() [3, 5]
		MEETS {
			Visit_POI_141();
		}

		VALUE Move_POI_148_POI_140() [3, 5]
		MEETS {
			Visit_POI_140();
		}

		VALUE Move_POI_148_POI_143() [4, 6]
		MEETS {
			Visit_POI_143();
		}

		VALUE Move_POI_148_POI_142() [5, 7]
		MEETS {
			Visit_POI_142();
		}

		VALUE Move_POI_148_POI_145() [6, 10]
		MEETS {
			Visit_POI_145();
		}

		VALUE Move_POI_148_POI_144() [1, 1]
		MEETS {
			Visit_POI_144();
		}

		VALUE Move_POI_148_POI_147() [5, 7]
		MEETS {
			Visit_POI_147();
		}

		VALUE Move_POI_148_POI_146() [6, 10]
		MEETS {
			Visit_POI_146();
		}

		VALUE Move_POI_148_POI_138() [5, 7]
		MEETS {
			Visit_POI_138();
		}

		VALUE Move_POI_148_POI_137() [3, 5]
		MEETS {
			Visit_POI_137();
		}

		VALUE Move_POI_148_POI_139() [1, 1]
		MEETS {
			Visit_POI_139();
		}

		VALUE Visit_POI_141() [8, 12]
		MEETS {
			Move_POI_141_POI_150();
			Move_POI_141_POI_152();
			Move_POI_141_POI_151();
			Move_POI_141_POI_154();
			Move_POI_141_POI_153();
			Move_POI_141_POI_134();
			Move_POI_141_POI_156();
			Move_POI_141_POI_133();
			Move_POI_141_POI_155();
			Move_POI_141_POI_136();
			Move_POI_141_POI_135();
			Move_POI_141_POI_157();
			Move_POI_141_POI_149();
			Move_POI_141_POI_148();
			Move_POI_141_POI_140();
			Move_POI_141_POI_143();
			Move_POI_141_POI_142();
			Move_POI_141_POI_145();
			Move_POI_141_POI_144();
			Move_POI_141_POI_147();
			Move_POI_141_POI_146();
			Move_POI_141_POI_138();
			Move_POI_141_POI_137();
			Move_POI_141_POI_139();
			Finish();
		}

		VALUE Move_POI_141_POI_150() [3, 5]
		MEETS {
			Visit_POI_150();
		}

		VALUE Move_POI_141_POI_152() [2, 4]
		MEETS {
			Visit_POI_152();
		}

		VALUE Move_POI_141_POI_151() [4, 6]
		MEETS {
			Visit_POI_151();
		}

		VALUE Move_POI_141_POI_154() [1, 1]
		MEETS {
			Visit_POI_154();
		}

		VALUE Move_POI_141_POI_153() [6, 10]
		MEETS {
			Visit_POI_153();
		}

		VALUE Move_POI_141_POI_134() [2, 4]
		MEETS {
			Visit_POI_134();
		}

		VALUE Move_POI_141_POI_156() [7, 11]
		MEETS {
			Visit_POI_156();
		}

		VALUE Move_POI_141_POI_133() [6, 8]
		MEETS {
			Visit_POI_133();
		}

		VALUE Move_POI_141_POI_155() [7, 11]
		MEETS {
			Visit_POI_155();
		}

		VALUE Move_POI_141_POI_136() [4, 6]
		MEETS {
			Visit_POI_136();
		}

		VALUE Move_POI_141_POI_135() [3, 5]
		MEETS {
			Visit_POI_135();
		}

		VALUE Move_POI_141_POI_157() [5, 7]
		MEETS {
			Visit_POI_157();
		}

		VALUE Move_POI_141_POI_149() [2, 4]
		MEETS {
			Visit_POI_149();
		}

		VALUE Move_POI_141_POI_148() [7, 11]
		MEETS {
			Visit_POI_148();
		}

		VALUE Move_POI_141_POI_140() [2, 2]
		MEETS {
			Visit_POI_140();
		}

		VALUE Move_POI_141_POI_143() [4, 6]
		MEETS {
			Visit_POI_143();
		}

		VALUE Move_POI_141_POI_142() [3, 5]
		MEETS {
			Visit_POI_142();
		}

		VALUE Move_POI_141_POI_145() [3, 5]
		MEETS {
			Visit_POI_145();
		}

		VALUE Move_POI_141_POI_144() [3, 5]
		MEETS {
			Visit_POI_144();
		}

		VALUE Move_POI_141_POI_147() [5, 7]
		MEETS {
			Visit_POI_147();
		}

		VALUE Move_POI_141_POI_146() [6, 10]
		MEETS {
			Visit_POI_146();
		}

		VALUE Move_POI_141_POI_138() [7, 11]
		MEETS {
			Visit_POI_138();
		}

		VALUE Move_POI_141_POI_137() [4, 6]
		MEETS {
			Visit_POI_137();
		}

		VALUE Move_POI_141_POI_139() [1, 1]
		MEETS {
			Visit_POI_139();
		}

		VALUE Visit_POI_140() [16, 24]
		MEETS {
			Move_POI_140_POI_150();
			Move_POI_140_POI_152();
			Move_POI_140_POI_151();
			Move_POI_140_POI_154();
			Move_POI_140_POI_153();
			Move_POI_140_POI_134();
			Move_POI_140_POI_156();
			Move_POI_140_POI_133();
			Move_POI_140_POI_155();
			Move_POI_140_POI_136();
			Move_POI_140_POI_135();
			Move_POI_140_POI_157();
			Move_POI_140_POI_149();
			Move_POI_140_POI_148();
			Move_POI_140_POI_141();
			Move_POI_140_POI_143();
			Move_POI_140_POI_142();
			Move_POI_140_POI_145();
			Move_POI_140_POI_144();
			Move_POI_140_POI_147();
			Move_POI_140_POI_146();
			Move_POI_140_POI_138();
			Move_POI_140_POI_137();
			Move_POI_140_POI_139();
			Finish();
		}

		VALUE Move_POI_140_POI_150() [3, 5]
		MEETS {
			Visit_POI_150();
		}

		VALUE Move_POI_140_POI_152() [3, 5]
		MEETS {
			Visit_POI_152();
		}

		VALUE Move_POI_140_POI_151() [2, 4]
		MEETS {
			Visit_POI_151();
		}

		VALUE Move_POI_140_POI_154() [1, 1]
		MEETS {
			Visit_POI_154();
		}

		VALUE Move_POI_140_POI_153() [4, 6]
		MEETS {
			Visit_POI_153();
		}

		VALUE Move_POI_140_POI_134() [6, 8]
		MEETS {
			Visit_POI_134();
		}

		VALUE Move_POI_140_POI_156() [7, 11]
		MEETS {
			Visit_POI_156();
		}

		VALUE Move_POI_140_POI_133() [1, 1]
		MEETS {
			Visit_POI_133();
		}

		VALUE Move_POI_140_POI_155() [6, 8]
		MEETS {
			Visit_POI_155();
		}

		VALUE Move_POI_140_POI_136() [6, 8]
		MEETS {
			Visit_POI_136();
		}

		VALUE Move_POI_140_POI_135() [2, 4]
		MEETS {
			Visit_POI_135();
		}

		VALUE Move_POI_140_POI_157() [5, 7]
		MEETS {
			Visit_POI_157();
		}

		VALUE Move_POI_140_POI_149() [7, 11]
		MEETS {
			Visit_POI_149();
		}

		VALUE Move_POI_140_POI_148() [2, 4]
		MEETS {
			Visit_POI_148();
		}

		VALUE Move_POI_140_POI_141() [2, 4]
		MEETS {
			Visit_POI_141();
		}

		VALUE Move_POI_140_POI_143() [6, 10]
		MEETS {
			Visit_POI_143();
		}

		VALUE Move_POI_140_POI_142() [1, 1]
		MEETS {
			Visit_POI_142();
		}

		VALUE Move_POI_140_POI_145() [6, 8]
		MEETS {
			Visit_POI_145();
		}

		VALUE Move_POI_140_POI_144() [2, 2]
		MEETS {
			Visit_POI_144();
		}

		VALUE Move_POI_140_POI_147() [2, 4]
		MEETS {
			Visit_POI_147();
		}

		VALUE Move_POI_140_POI_146() [6, 8]
		MEETS {
			Visit_POI_146();
		}

		VALUE Move_POI_140_POI_138() [2, 4]
		MEETS {
			Visit_POI_138();
		}

		VALUE Move_POI_140_POI_137() [4, 6]
		MEETS {
			Visit_POI_137();
		}

		VALUE Move_POI_140_POI_139() [6, 8]
		MEETS {
			Visit_POI_139();
		}

		VALUE Visit_POI_143() [24, 36]
		MEETS {
			Move_POI_143_POI_150();
			Move_POI_143_POI_152();
			Move_POI_143_POI_151();
			Move_POI_143_POI_154();
			Move_POI_143_POI_153();
			Move_POI_143_POI_134();
			Move_POI_143_POI_156();
			Move_POI_143_POI_133();
			Move_POI_143_POI_155();
			Move_POI_143_POI_136();
			Move_POI_143_POI_135();
			Move_POI_143_POI_157();
			Move_POI_143_POI_149();
			Move_POI_143_POI_148();
			Move_POI_143_POI_141();
			Move_POI_143_POI_140();
			Move_POI_143_POI_142();
			Move_POI_143_POI_145();
			Move_POI_143_POI_144();
			Move_POI_143_POI_147();
			Move_POI_143_POI_146();
			Move_POI_143_POI_138();
			Move_POI_143_POI_137();
			Move_POI_143_POI_139();
			Finish();
		}

		VALUE Move_POI_143_POI_150() [6, 8]
		MEETS {
			Visit_POI_150();
		}

		VALUE Move_POI_143_POI_152() [2, 4]
		MEETS {
			Visit_POI_152();
		}

		VALUE Move_POI_143_POI_151() [7, 11]
		MEETS {
			Visit_POI_151();
		}

		VALUE Move_POI_143_POI_154() [3, 5]
		MEETS {
			Visit_POI_154();
		}

		VALUE Move_POI_143_POI_153() [5, 7]
		MEETS {
			Visit_POI_153();
		}

		VALUE Move_POI_143_POI_134() [6, 8]
		MEETS {
			Visit_POI_134();
		}

		VALUE Move_POI_143_POI_156() [4, 6]
		MEETS {
			Visit_POI_156();
		}

		VALUE Move_POI_143_POI_133() [6, 10]
		MEETS {
			Visit_POI_133();
		}

		VALUE Move_POI_143_POI_155() [6, 10]
		MEETS {
			Visit_POI_155();
		}

		VALUE Move_POI_143_POI_136() [7, 11]
		MEETS {
			Visit_POI_136();
		}

		VALUE Move_POI_143_POI_135() [1, 1]
		MEETS {
			Visit_POI_135();
		}

		VALUE Move_POI_143_POI_157() [4, 6]
		MEETS {
			Visit_POI_157();
		}

		VALUE Move_POI_143_POI_149() [7, 11]
		MEETS {
			Visit_POI_149();
		}

		VALUE Move_POI_143_POI_148() [1, 1]
		MEETS {
			Visit_POI_148();
		}

		VALUE Move_POI_143_POI_141() [6, 10]
		MEETS {
			Visit_POI_141();
		}

		VALUE Move_POI_143_POI_140() [6, 10]
		MEETS {
			Visit_POI_140();
		}

		VALUE Move_POI_143_POI_142() [2, 4]
		MEETS {
			Visit_POI_142();
		}

		VALUE Move_POI_143_POI_145() [1, 1]
		MEETS {
			Visit_POI_145();
		}

		VALUE Move_POI_143_POI_144() [3, 5]
		MEETS {
			Visit_POI_144();
		}

		VALUE Move_POI_143_POI_147() [3, 5]
		MEETS {
			Visit_POI_147();
		}

		VALUE Move_POI_143_POI_146() [2, 2]
		MEETS {
			Visit_POI_146();
		}

		VALUE Move_POI_143_POI_138() [5, 7]
		MEETS {
			Visit_POI_138();
		}

		VALUE Move_POI_143_POI_137() [1, 1]
		MEETS {
			Visit_POI_137();
		}

		VALUE Move_POI_143_POI_139() [6, 8]
		MEETS {
			Visit_POI_139();
		}

		VALUE Visit_POI_142() [1, 1]
		MEETS {
			Move_POI_142_POI_150();
			Move_POI_142_POI_152();
			Move_POI_142_POI_151();
			Move_POI_142_POI_154();
			Move_POI_142_POI_153();
			Move_POI_142_POI_134();
			Move_POI_142_POI_156();
			Move_POI_142_POI_133();
			Move_POI_142_POI_155();
			Move_POI_142_POI_136();
			Move_POI_142_POI_135();
			Move_POI_142_POI_157();
			Move_POI_142_POI_149();
			Move_POI_142_POI_148();
			Move_POI_142_POI_141();
			Move_POI_142_POI_140();
			Move_POI_142_POI_143();
			Move_POI_142_POI_145();
			Move_POI_142_POI_144();
			Move_POI_142_POI_147();
			Move_POI_142_POI_146();
			Move_POI_142_POI_138();
			Move_POI_142_POI_137();
			Move_POI_142_POI_139();
			Finish();
		}

		VALUE Move_POI_142_POI_150() [2, 4]
		MEETS {
			Visit_POI_150();
		}

		VALUE Move_POI_142_POI_152() [5, 7]
		MEETS {
			Visit_POI_152();
		}

		VALUE Move_POI_142_POI_151() [4, 6]
		MEETS {
			Visit_POI_151();
		}

		VALUE Move_POI_142_POI_154() [6, 8]
		MEETS {
			Visit_POI_154();
		}

		VALUE Move_POI_142_POI_153() [6, 8]
		MEETS {
			Visit_POI_153();
		}

		VALUE Move_POI_142_POI_134() [5, 7]
		MEETS {
			Visit_POI_134();
		}

		VALUE Move_POI_142_POI_156() [5, 7]
		MEETS {
			Visit_POI_156();
		}

		VALUE Move_POI_142_POI_133() [2, 2]
		MEETS {
			Visit_POI_133();
		}

		VALUE Move_POI_142_POI_155() [4, 6]
		MEETS {
			Visit_POI_155();
		}

		VALUE Move_POI_142_POI_136() [5, 7]
		MEETS {
			Visit_POI_136();
		}

		VALUE Move_POI_142_POI_135() [6, 8]
		MEETS {
			Visit_POI_135();
		}

		VALUE Move_POI_142_POI_157() [7, 11]
		MEETS {
			Visit_POI_157();
		}

		VALUE Move_POI_142_POI_149() [6, 8]
		MEETS {
			Visit_POI_149();
		}

		VALUE Move_POI_142_POI_148() [2, 2]
		MEETS {
			Visit_POI_148();
		}

		VALUE Move_POI_142_POI_141() [1, 1]
		MEETS {
			Visit_POI_141();
		}

		VALUE Move_POI_142_POI_140() [3, 5]
		MEETS {
			Visit_POI_140();
		}

		VALUE Move_POI_142_POI_143() [4, 6]
		MEETS {
			Visit_POI_143();
		}

		VALUE Move_POI_142_POI_145() [5, 7]
		MEETS {
			Visit_POI_145();
		}

		VALUE Move_POI_142_POI_144() [4, 6]
		MEETS {
			Visit_POI_144();
		}

		VALUE Move_POI_142_POI_147() [2, 4]
		MEETS {
			Visit_POI_147();
		}

		VALUE Move_POI_142_POI_146() [2, 4]
		MEETS {
			Visit_POI_146();
		}

		VALUE Move_POI_142_POI_138() [6, 10]
		MEETS {
			Visit_POI_138();
		}

		VALUE Move_POI_142_POI_137() [6, 10]
		MEETS {
			Visit_POI_137();
		}

		VALUE Move_POI_142_POI_139() [4, 6]
		MEETS {
			Visit_POI_139();
		}

		VALUE Visit_POI_145() [24, 36]
		MEETS {
			Move_POI_145_POI_150();
			Move_POI_145_POI_152();
			Move_POI_145_POI_151();
			Move_POI_145_POI_154();
			Move_POI_145_POI_153();
			Move_POI_145_POI_134();
			Move_POI_145_POI_156();
			Move_POI_145_POI_133();
			Move_POI_145_POI_155();
			Move_POI_145_POI_136();
			Move_POI_145_POI_135();
			Move_POI_145_POI_157();
			Move_POI_145_POI_149();
			Move_POI_145_POI_148();
			Move_POI_145_POI_141();
			Move_POI_145_POI_140();
			Move_POI_145_POI_143();
			Move_POI_145_POI_142();
			Move_POI_145_POI_144();
			Move_POI_145_POI_147();
			Move_POI_145_POI_146();
			Move_POI_145_POI_138();
			Move_POI_145_POI_137();
			Move_POI_145_POI_139();
			Finish();
		}

		VALUE Move_POI_145_POI_150() [4, 6]
		MEETS {
			Visit_POI_150();
		}

		VALUE Move_POI_145_POI_152() [1, 1]
		MEETS {
			Visit_POI_152();
		}

		VALUE Move_POI_145_POI_151() [4, 6]
		MEETS {
			Visit_POI_151();
		}

		VALUE Move_POI_145_POI_154() [3, 5]
		MEETS {
			Visit_POI_154();
		}

		VALUE Move_POI_145_POI_153() [7, 11]
		MEETS {
			Visit_POI_153();
		}

		VALUE Move_POI_145_POI_134() [2, 2]
		MEETS {
			Visit_POI_134();
		}

		VALUE Move_POI_145_POI_156() [5, 7]
		MEETS {
			Visit_POI_156();
		}

		VALUE Move_POI_145_POI_133() [2, 4]
		MEETS {
			Visit_POI_133();
		}

		VALUE Move_POI_145_POI_155() [4, 6]
		MEETS {
			Visit_POI_155();
		}

		VALUE Move_POI_145_POI_136() [4, 6]
		MEETS {
			Visit_POI_136();
		}

		VALUE Move_POI_145_POI_135() [5, 7]
		MEETS {
			Visit_POI_135();
		}

		VALUE Move_POI_145_POI_157() [2, 4]
		MEETS {
			Visit_POI_157();
		}

		VALUE Move_POI_145_POI_149() [7, 11]
		MEETS {
			Visit_POI_149();
		}

		VALUE Move_POI_145_POI_148() [3, 5]
		MEETS {
			Visit_POI_148();
		}

		VALUE Move_POI_145_POI_141() [3, 5]
		MEETS {
			Visit_POI_141();
		}

		VALUE Move_POI_145_POI_140() [2, 2]
		MEETS {
			Visit_POI_140();
		}

		VALUE Move_POI_145_POI_143() [6, 8]
		MEETS {
			Visit_POI_143();
		}

		VALUE Move_POI_145_POI_142() [7, 11]
		MEETS {
			Visit_POI_142();
		}

		VALUE Move_POI_145_POI_144() [4, 6]
		MEETS {
			Visit_POI_144();
		}

		VALUE Move_POI_145_POI_147() [6, 8]
		MEETS {
			Visit_POI_147();
		}

		VALUE Move_POI_145_POI_146() [6, 10]
		MEETS {
			Visit_POI_146();
		}

		VALUE Move_POI_145_POI_138() [7, 11]
		MEETS {
			Visit_POI_138();
		}

		VALUE Move_POI_145_POI_137() [5, 7]
		MEETS {
			Visit_POI_137();
		}

		VALUE Move_POI_145_POI_139() [1, 1]
		MEETS {
			Visit_POI_139();
		}

		VALUE Visit_POI_144() [24, 36]
		MEETS {
			Move_POI_144_POI_150();
			Move_POI_144_POI_152();
			Move_POI_144_POI_151();
			Move_POI_144_POI_154();
			Move_POI_144_POI_153();
			Move_POI_144_POI_134();
			Move_POI_144_POI_156();
			Move_POI_144_POI_133();
			Move_POI_144_POI_155();
			Move_POI_144_POI_136();
			Move_POI_144_POI_135();
			Move_POI_144_POI_157();
			Move_POI_144_POI_149();
			Move_POI_144_POI_148();
			Move_POI_144_POI_141();
			Move_POI_144_POI_140();
			Move_POI_144_POI_143();
			Move_POI_144_POI_142();
			Move_POI_144_POI_145();
			Move_POI_144_POI_147();
			Move_POI_144_POI_146();
			Move_POI_144_POI_138();
			Move_POI_144_POI_137();
			Move_POI_144_POI_139();
			Finish();
		}

		VALUE Move_POI_144_POI_150() [4, 6]
		MEETS {
			Visit_POI_150();
		}

		VALUE Move_POI_144_POI_152() [5, 7]
		MEETS {
			Visit_POI_152();
		}

		VALUE Move_POI_144_POI_151() [7, 11]
		MEETS {
			Visit_POI_151();
		}

		VALUE Move_POI_144_POI_154() [5, 7]
		MEETS {
			Visit_POI_154();
		}

		VALUE Move_POI_144_POI_153() [6, 10]
		MEETS {
			Visit_POI_153();
		}

		VALUE Move_POI_144_POI_134() [7, 11]
		MEETS {
			Visit_POI_134();
		}

		VALUE Move_POI_144_POI_156() [2, 2]
		MEETS {
			Visit_POI_156();
		}

		VALUE Move_POI_144_POI_133() [4, 6]
		MEETS {
			Visit_POI_133();
		}

		VALUE Move_POI_144_POI_155() [2, 4]
		MEETS {
			Visit_POI_155();
		}

		VALUE Move_POI_144_POI_136() [6, 10]
		MEETS {
			Visit_POI_136();
		}

		VALUE Move_POI_144_POI_135() [5, 7]
		MEETS {
			Visit_POI_135();
		}

		VALUE Move_POI_144_POI_157() [2, 2]
		MEETS {
			Visit_POI_157();
		}

		VALUE Move_POI_144_POI_149() [1, 1]
		MEETS {
			Visit_POI_149();
		}

		VALUE Move_POI_144_POI_148() [1, 1]
		MEETS {
			Visit_POI_148();
		}

		VALUE Move_POI_144_POI_141() [5, 7]
		MEETS {
			Visit_POI_141();
		}

		VALUE Move_POI_144_POI_140() [2, 2]
		MEETS {
			Visit_POI_140();
		}

		VALUE Move_POI_144_POI_143() [2, 4]
		MEETS {
			Visit_POI_143();
		}

		VALUE Move_POI_144_POI_142() [3, 5]
		MEETS {
			Visit_POI_142();
		}

		VALUE Move_POI_144_POI_145() [6, 8]
		MEETS {
			Visit_POI_145();
		}

		VALUE Move_POI_144_POI_147() [7, 11]
		MEETS {
			Visit_POI_147();
		}

		VALUE Move_POI_144_POI_146() [7, 11]
		MEETS {
			Visit_POI_146();
		}

		VALUE Move_POI_144_POI_138() [6, 10]
		MEETS {
			Visit_POI_138();
		}

		VALUE Move_POI_144_POI_137() [2, 4]
		MEETS {
			Visit_POI_137();
		}

		VALUE Move_POI_144_POI_139() [3, 5]
		MEETS {
			Visit_POI_139();
		}

		VALUE Visit_POI_147() [1, 1]
		MEETS {
			Move_POI_147_POI_150();
			Move_POI_147_POI_152();
			Move_POI_147_POI_151();
			Move_POI_147_POI_154();
			Move_POI_147_POI_153();
			Move_POI_147_POI_134();
			Move_POI_147_POI_156();
			Move_POI_147_POI_133();
			Move_POI_147_POI_155();
			Move_POI_147_POI_136();
			Move_POI_147_POI_135();
			Move_POI_147_POI_157();
			Move_POI_147_POI_149();
			Move_POI_147_POI_148();
			Move_POI_147_POI_141();
			Move_POI_147_POI_140();
			Move_POI_147_POI_143();
			Move_POI_147_POI_142();
			Move_POI_147_POI_145();
			Move_POI_147_POI_144();
			Move_POI_147_POI_146();
			Move_POI_147_POI_138();
			Move_POI_147_POI_137();
			Move_POI_147_POI_139();
			Finish();
		}

		VALUE Move_POI_147_POI_150() [2, 2]
		MEETS {
			Visit_POI_150();
		}

		VALUE Move_POI_147_POI_152() [2, 2]
		MEETS {
			Visit_POI_152();
		}

		VALUE Move_POI_147_POI_151() [2, 4]
		MEETS {
			Visit_POI_151();
		}

		VALUE Move_POI_147_POI_154() [7, 11]
		MEETS {
			Visit_POI_154();
		}

		VALUE Move_POI_147_POI_153() [7, 11]
		MEETS {
			Visit_POI_153();
		}

		VALUE Move_POI_147_POI_134() [7, 11]
		MEETS {
			Visit_POI_134();
		}

		VALUE Move_POI_147_POI_156() [4, 6]
		MEETS {
			Visit_POI_156();
		}

		VALUE Move_POI_147_POI_133() [6, 10]
		MEETS {
			Visit_POI_133();
		}

		VALUE Move_POI_147_POI_155() [2, 2]
		MEETS {
			Visit_POI_155();
		}

		VALUE Move_POI_147_POI_136() [7, 11]
		MEETS {
			Visit_POI_136();
		}

		VALUE Move_POI_147_POI_135() [3, 5]
		MEETS {
			Visit_POI_135();
		}

		VALUE Move_POI_147_POI_157() [2, 2]
		MEETS {
			Visit_POI_157();
		}

		VALUE Move_POI_147_POI_149() [6, 8]
		MEETS {
			Visit_POI_149();
		}

		VALUE Move_POI_147_POI_148() [3, 5]
		MEETS {
			Visit_POI_148();
		}

		VALUE Move_POI_147_POI_141() [6, 8]
		MEETS {
			Visit_POI_141();
		}

		VALUE Move_POI_147_POI_140() [1, 1]
		MEETS {
			Visit_POI_140();
		}

		VALUE Move_POI_147_POI_143() [1, 1]
		MEETS {
			Visit_POI_143();
		}

		VALUE Move_POI_147_POI_142() [2, 4]
		MEETS {
			Visit_POI_142();
		}

		VALUE Move_POI_147_POI_145() [2, 2]
		MEETS {
			Visit_POI_145();
		}

		VALUE Move_POI_147_POI_144() [7, 11]
		MEETS {
			Visit_POI_144();
		}

		VALUE Move_POI_147_POI_146() [7, 11]
		MEETS {
			Visit_POI_146();
		}

		VALUE Move_POI_147_POI_138() [2, 4]
		MEETS {
			Visit_POI_138();
		}

		VALUE Move_POI_147_POI_137() [4, 6]
		MEETS {
			Visit_POI_137();
		}

		VALUE Move_POI_147_POI_139() [1, 1]
		MEETS {
			Visit_POI_139();
		}

		VALUE Visit_POI_146() [8, 12]
		MEETS {
			Move_POI_146_POI_150();
			Move_POI_146_POI_152();
			Move_POI_146_POI_151();
			Move_POI_146_POI_154();
			Move_POI_146_POI_153();
			Move_POI_146_POI_134();
			Move_POI_146_POI_156();
			Move_POI_146_POI_133();
			Move_POI_146_POI_155();
			Move_POI_146_POI_136();
			Move_POI_146_POI_135();
			Move_POI_146_POI_157();
			Move_POI_146_POI_149();
			Move_POI_146_POI_148();
			Move_POI_146_POI_141();
			Move_POI_146_POI_140();
			Move_POI_146_POI_143();
			Move_POI_146_POI_142();
			Move_POI_146_POI_145();
			Move_POI_146_POI_144();
			Move_POI_146_POI_147();
			Move_POI_146_POI_138();
			Move_POI_146_POI_137();
			Move_POI_146_POI_139();
			Finish();
		}

		VALUE Move_POI_146_POI_150() [7, 11]
		MEETS {
			Visit_POI_150();
		}

		VALUE Move_POI_146_POI_152() [6, 10]
		MEETS {
			Visit_POI_152();
		}

		VALUE Move_POI_146_POI_151() [3, 5]
		MEETS {
			Visit_POI_151();
		}

		VALUE Move_POI_146_POI_154() [1, 1]
		MEETS {
			Visit_POI_154();
		}

		VALUE Move_POI_146_POI_153() [2, 2]
		MEETS {
			Visit_POI_153();
		}

		VALUE Move_POI_146_POI_134() [2, 2]
		MEETS {
			Visit_POI_134();
		}

		VALUE Move_POI_146_POI_156() [6, 8]
		MEETS {
			Visit_POI_156();
		}

		VALUE Move_POI_146_POI_133() [2, 4]
		MEETS {
			Visit_POI_133();
		}

		VALUE Move_POI_146_POI_155() [6, 10]
		MEETS {
			Visit_POI_155();
		}

		VALUE Move_POI_146_POI_136() [6, 10]
		MEETS {
			Visit_POI_136();
		}

		VALUE Move_POI_146_POI_135() [1, 1]
		MEETS {
			Visit_POI_135();
		}

		VALUE Move_POI_146_POI_157() [2, 2]
		MEETS {
			Visit_POI_157();
		}

		VALUE Move_POI_146_POI_149() [4, 6]
		MEETS {
			Visit_POI_149();
		}

		VALUE Move_POI_146_POI_148() [4, 6]
		MEETS {
			Visit_POI_148();
		}

		VALUE Move_POI_146_POI_141() [2, 4]
		MEETS {
			Visit_POI_141();
		}

		VALUE Move_POI_146_POI_140() [6, 8]
		MEETS {
			Visit_POI_140();
		}

		VALUE Move_POI_146_POI_143() [6, 10]
		MEETS {
			Visit_POI_143();
		}

		VALUE Move_POI_146_POI_142() [7, 11]
		MEETS {
			Visit_POI_142();
		}

		VALUE Move_POI_146_POI_145() [6, 8]
		MEETS {
			Visit_POI_145();
		}

		VALUE Move_POI_146_POI_144() [2, 2]
		MEETS {
			Visit_POI_144();
		}

		VALUE Move_POI_146_POI_147() [4, 6]
		MEETS {
			Visit_POI_147();
		}

		VALUE Move_POI_146_POI_138() [6, 10]
		MEETS {
			Visit_POI_138();
		}

		VALUE Move_POI_146_POI_137() [5, 7]
		MEETS {
			Visit_POI_137();
		}

		VALUE Move_POI_146_POI_139() [6, 10]
		MEETS {
			Visit_POI_139();
		}

		VALUE Visit_POI_138() [8, 12]
		MEETS {
			Move_POI_138_POI_150();
			Move_POI_138_POI_152();
			Move_POI_138_POI_151();
			Move_POI_138_POI_154();
			Move_POI_138_POI_153();
			Move_POI_138_POI_134();
			Move_POI_138_POI_156();
			Move_POI_138_POI_133();
			Move_POI_138_POI_155();
			Move_POI_138_POI_136();
			Move_POI_138_POI_135();
			Move_POI_138_POI_157();
			Move_POI_138_POI_149();
			Move_POI_138_POI_148();
			Move_POI_138_POI_141();
			Move_POI_138_POI_140();
			Move_POI_138_POI_143();
			Move_POI_138_POI_142();
			Move_POI_138_POI_145();
			Move_POI_138_POI_144();
			Move_POI_138_POI_147();
			Move_POI_138_POI_146();
			Move_POI_138_POI_137();
			Move_POI_138_POI_139();
			Finish();
		}

		VALUE Move_POI_138_POI_150() [6, 8]
		MEETS {
			Visit_POI_150();
		}

		VALUE Move_POI_138_POI_152() [1, 1]
		MEETS {
			Visit_POI_152();
		}

		VALUE Move_POI_138_POI_151() [1, 1]
		MEETS {
			Visit_POI_151();
		}

		VALUE Move_POI_138_POI_154() [5, 7]
		MEETS {
			Visit_POI_154();
		}

		VALUE Move_POI_138_POI_153() [2, 4]
		MEETS {
			Visit_POI_153();
		}

		VALUE Move_POI_138_POI_134() [1, 1]
		MEETS {
			Visit_POI_134();
		}

		VALUE Move_POI_138_POI_156() [5, 7]
		MEETS {
			Visit_POI_156();
		}

		VALUE Move_POI_138_POI_133() [2, 4]
		MEETS {
			Visit_POI_133();
		}

		VALUE Move_POI_138_POI_155() [2, 2]
		MEETS {
			Visit_POI_155();
		}

		VALUE Move_POI_138_POI_136() [3, 5]
		MEETS {
			Visit_POI_136();
		}

		VALUE Move_POI_138_POI_135() [1, 1]
		MEETS {
			Visit_POI_135();
		}

		VALUE Move_POI_138_POI_157() [2, 2]
		MEETS {
			Visit_POI_157();
		}

		VALUE Move_POI_138_POI_149() [2, 4]
		MEETS {
			Visit_POI_149();
		}

		VALUE Move_POI_138_POI_148() [4, 6]
		MEETS {
			Visit_POI_148();
		}

		VALUE Move_POI_138_POI_141() [5, 7]
		MEETS {
			Visit_POI_141();
		}

		VALUE Move_POI_138_POI_140() [3, 5]
		MEETS {
			Visit_POI_140();
		}

		VALUE Move_POI_138_POI_143() [3, 5]
		MEETS {
			Visit_POI_143();
		}

		VALUE Move_POI_138_POI_142() [7, 11]
		MEETS {
			Visit_POI_142();
		}

		VALUE Move_POI_138_POI_145() [7, 11]
		MEETS {
			Visit_POI_145();
		}

		VALUE Move_POI_138_POI_144() [4, 6]
		MEETS {
			Visit_POI_144();
		}

		VALUE Move_POI_138_POI_147() [6, 8]
		MEETS {
			Visit_POI_147();
		}

		VALUE Move_POI_138_POI_146() [7, 11]
		MEETS {
			Visit_POI_146();
		}

		VALUE Move_POI_138_POI_137() [3, 5]
		MEETS {
			Visit_POI_137();
		}

		VALUE Move_POI_138_POI_139() [2, 2]
		MEETS {
			Visit_POI_139();
		}

		VALUE Visit_POI_137() [24, 36]
		MEETS {
			Move_POI_137_POI_150();
			Move_POI_137_POI_152();
			Move_POI_137_POI_151();
			Move_POI_137_POI_154();
			Move_POI_137_POI_153();
			Move_POI_137_POI_134();
			Move_POI_137_POI_156();
			Move_POI_137_POI_133();
			Move_POI_137_POI_155();
			Move_POI_137_POI_136();
			Move_POI_137_POI_135();
			Move_POI_137_POI_157();
			Move_POI_137_POI_149();
			Move_POI_137_POI_148();
			Move_POI_137_POI_141();
			Move_POI_137_POI_140();
			Move_POI_137_POI_143();
			Move_POI_137_POI_142();
			Move_POI_137_POI_145();
			Move_POI_137_POI_144();
			Move_POI_137_POI_147();
			Move_POI_137_POI_146();
			Move_POI_137_POI_138();
			Move_POI_137_POI_139();
			Finish();
		}

		VALUE Move_POI_137_POI_150() [5, 7]
		MEETS {
			Visit_POI_150();
		}

		VALUE Move_POI_137_POI_152() [2, 4]
		MEETS {
			Visit_POI_152();
		}

		VALUE Move_POI_137_POI_151() [7, 11]
		MEETS {
			Visit_POI_151();
		}

		VALUE Move_POI_137_POI_154() [6, 8]
		MEETS {
			Visit_POI_154();
		}

		VALUE Move_POI_137_POI_153() [6, 8]
		MEETS {
			Visit_POI_153();
		}

		VALUE Move_POI_137_POI_134() [2, 2]
		MEETS {
			Visit_POI_134();
		}

		VALUE Move_POI_137_POI_156() [1, 1]
		MEETS {
			Visit_POI_156();
		}

		VALUE Move_POI_137_POI_133() [7, 11]
		MEETS {
			Visit_POI_133();
		}

		VALUE Move_POI_137_POI_155() [2, 2]
		MEETS {
			Visit_POI_155();
		}

		VALUE Move_POI_137_POI_136() [5, 7]
		MEETS {
			Visit_POI_136();
		}

		VALUE Move_POI_137_POI_135() [2, 4]
		MEETS {
			Visit_POI_135();
		}

		VALUE Move_POI_137_POI_157() [7, 11]
		MEETS {
			Visit_POI_157();
		}

		VALUE Move_POI_137_POI_149() [3, 5]
		MEETS {
			Visit_POI_149();
		}

		VALUE Move_POI_137_POI_148() [7, 11]
		MEETS {
			Visit_POI_148();
		}

		VALUE Move_POI_137_POI_141() [5, 7]
		MEETS {
			Visit_POI_141();
		}

		VALUE Move_POI_137_POI_140() [2, 4]
		MEETS {
			Visit_POI_140();
		}

		VALUE Move_POI_137_POI_143() [2, 2]
		MEETS {
			Visit_POI_143();
		}

		VALUE Move_POI_137_POI_142() [2, 4]
		MEETS {
			Visit_POI_142();
		}

		VALUE Move_POI_137_POI_145() [6, 8]
		MEETS {
			Visit_POI_145();
		}

		VALUE Move_POI_137_POI_144() [7, 11]
		MEETS {
			Visit_POI_144();
		}

		VALUE Move_POI_137_POI_147() [3, 5]
		MEETS {
			Visit_POI_147();
		}

		VALUE Move_POI_137_POI_146() [1, 1]
		MEETS {
			Visit_POI_146();
		}

		VALUE Move_POI_137_POI_138() [5, 7]
		MEETS {
			Visit_POI_138();
		}

		VALUE Move_POI_137_POI_139() [1, 1]
		MEETS {
			Visit_POI_139();
		}

		VALUE Visit_POI_139() [8, 12]
		MEETS {
			Move_POI_139_POI_150();
			Move_POI_139_POI_152();
			Move_POI_139_POI_151();
			Move_POI_139_POI_154();
			Move_POI_139_POI_153();
			Move_POI_139_POI_134();
			Move_POI_139_POI_156();
			Move_POI_139_POI_133();
			Move_POI_139_POI_155();
			Move_POI_139_POI_136();
			Move_POI_139_POI_135();
			Move_POI_139_POI_157();
			Move_POI_139_POI_149();
			Move_POI_139_POI_148();
			Move_POI_139_POI_141();
			Move_POI_139_POI_140();
			Move_POI_139_POI_143();
			Move_POI_139_POI_142();
			Move_POI_139_POI_145();
			Move_POI_139_POI_144();
			Move_POI_139_POI_147();
			Move_POI_139_POI_146();
			Move_POI_139_POI_138();
			Move_POI_139_POI_137();
			Finish();
		}

		VALUE Move_POI_139_POI_150() [2, 2]
		MEETS {
			Visit_POI_150();
		}

		VALUE Move_POI_139_POI_152() [3, 5]
		MEETS {
			Visit_POI_152();
		}

		VALUE Move_POI_139_POI_151() [2, 4]
		MEETS {
			Visit_POI_151();
		}

		VALUE Move_POI_139_POI_154() [2, 2]
		MEETS {
			Visit_POI_154();
		}

		VALUE Move_POI_139_POI_153() [6, 10]
		MEETS {
			Visit_POI_153();
		}

		VALUE Move_POI_139_POI_134() [3, 5]
		MEETS {
			Visit_POI_134();
		}

		VALUE Move_POI_139_POI_156() [3, 5]
		MEETS {
			Visit_POI_156();
		}

		VALUE Move_POI_139_POI_133() [6, 8]
		MEETS {
			Visit_POI_133();
		}

		VALUE Move_POI_139_POI_155() [1, 1]
		MEETS {
			Visit_POI_155();
		}

		VALUE Move_POI_139_POI_136() [7, 11]
		MEETS {
			Visit_POI_136();
		}

		VALUE Move_POI_139_POI_135() [4, 6]
		MEETS {
			Visit_POI_135();
		}

		VALUE Move_POI_139_POI_157() [2, 2]
		MEETS {
			Visit_POI_157();
		}

		VALUE Move_POI_139_POI_149() [3, 5]
		MEETS {
			Visit_POI_149();
		}

		VALUE Move_POI_139_POI_148() [4, 6]
		MEETS {
			Visit_POI_148();
		}

		VALUE Move_POI_139_POI_141() [1, 1]
		MEETS {
			Visit_POI_141();
		}

		VALUE Move_POI_139_POI_140() [6, 8]
		MEETS {
			Visit_POI_140();
		}

		VALUE Move_POI_139_POI_143() [6, 8]
		MEETS {
			Visit_POI_143();
		}

		VALUE Move_POI_139_POI_142() [6, 10]
		MEETS {
			Visit_POI_142();
		}

		VALUE Move_POI_139_POI_145() [5, 7]
		MEETS {
			Visit_POI_145();
		}

		VALUE Move_POI_139_POI_144() [4, 6]
		MEETS {
			Visit_POI_144();
		}

		VALUE Move_POI_139_POI_147() [2, 2]
		MEETS {
			Visit_POI_147();
		}

		VALUE Move_POI_139_POI_146() [6, 10]
		MEETS {
			Visit_POI_146();
		}

		VALUE Move_POI_139_POI_138() [2, 4]
		MEETS {
			Visit_POI_138();
		}

		VALUE Move_POI_139_POI_137() [5, 7]
		MEETS {
			Visit_POI_137();
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

			cd0 <!> TripPath.hops.Visit_POI_150();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_152();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_151();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_154();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_153();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_134();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_156();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_133();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_155();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_136();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_135();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_157();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_149();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_148();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_141();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_140();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_143();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_142();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_145();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_144();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_147();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_146();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_138();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_137();
			CONTAINS [0, +INF] [0, +INF] cd0;
			cd1 <!> TripPlanning.decisions.MakeVisitDecision();
			MEETS cd1;
			cd3 <?> TripWindow.visit.Visit();
			cd0 DURING [0, +INF] [0, +INF] cd3;

		}

		VALUE MakeVisitDecision() {

			cd0 <!> TripPath.hops.Visit_POI_139();
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

