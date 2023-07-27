-- HollowNest_Leader_Agendas
-- Author: wldcmzy
-- DateCreated: 7/25/2023 2:27:53 PM
--------------------------------------------------------------
/*
it seems like only one agenda can be attached,
while the origin plan is two adendas for every leader.
so, many code was not used.
Finilly used these 4 agendas:
- AGENDA_RADIANCE
- AGENDA_GOD_OF_GODS
- TRAIT_AGENDA_WANDERER
- TRAIT_AGENDA_WYRMS_2
*/
INSERT INTO Types			
(Type,							 Kind			)	VALUES
('TRAIT_AGENDA_RADIANCE',		'KIND_TRAIT'	),
('TRAIT_AGENDA_RADIANCE_2',		'KIND_TRAIT'	),
('TRAIT_AGENDA_GOD_OF_GODS',	'KIND_TRAIT'	),
('TRAIT_AGENDA_GOD_OF_GODS_2',	'KIND_TRAIT'	),
('TRAIT_AGENDA_WANDERER',	    'KIND_TRAIT'	),
('TRAIT_AGENDA_WANDERER_2',	    'KIND_TRAIT'	),
('TRAIT_AGENDA_WYRMS',	        'KIND_TRAIT'	),
('TRAIT_AGENDA_WYRMS_2',	    'KIND_TRAIT'	);

INSERT INTO Traits			
(TraitType,						     Name,						     Description							)	VALUES
('TRAIT_AGENDA_RADIANCE',		    'LOC_AGENDA_RADIANCE_NAME',		'LOC_AGENDA_RADIANCE_DESCRIPTION'		),
('TRAIT_AGENDA_RADIANCE_2',		    'LOC_AGENDA_RADIANCE_2_NAME',	'LOC_AGENDA_RADIANCE_2_DESCRIPTION'		),
('TRAIT_AGENDA_GOD_OF_GODS',		'LOC_AGENDA_GOD_OF_GODS_NAME',  'LOC_AGENDA_GOD_OF_GODS_DESCRIPTION'	),
('TRAIT_AGENDA_GOD_OF_GODS_2',		'LOC_AGENDA_GOD_OF_GODS_2_NAME','LOC_AGENDA_GOD_OF_GODS_2_DESCRIPTION'	),
('TRAIT_AGENDA_WANDERER',	        'LOC_AGENDA_WANDERER_NAME',	    'LOC_AGENDA_WANDERER_DESCRIPTION'		),
('TRAIT_AGENDA_WANDERER_2',	        'LOC_AGENDA_WANDERER_2_NAME',	'LOC_AGENDA_WANDERER_2_DESCRIPTION'		),
('TRAIT_AGENDA_WYRMS',	            'LOC_AGENDA_WYRMS_NAME',	    'LOC_AGENDA_WYRMS_DESCRIPTION'			),
('TRAIT_AGENDA_WYRMS_2',	        'LOC_AGENDA_WYRMS_2_NAME',		'LOC_AGENDA_WYRMS_2_DESCRIPTION'		);


INSERT INTO Agendas			
(AgendaType,						Name,							Description								)	VALUES
('AGENDA_RADIANCE',					'LOC_AGENDA_RADIANCE_NAME',		'LOC_AGENDA_RADIANCE_DESCRIPTION'		),
('AGENDA_RADIANCE_2',				'LOC_AGENDA_RADIANCE_2_NAME',	'LOC_AGENDA_RADIANCE_2_DESCRIPTION'		),
('AGENDA_GOD_OF_GODS',				'LOC_AGENDA_GOD_OF_GODS_NAME',  'LOC_AGENDA_GOD_OF_GODS_DESCRIPTION'	),
('AGENDA_GOD_OF_GODS_2',			'LOC_AGENDA_GOD_OF_GODS_2_NAME','LOC_AGENDA_GOD_OF_GODS_2_DESCRIPTION'	),
('AGENDA_WANDERER',					'LOC_AGENDA_WANDERER_NAME',	    'LOC_AGENDA_WANDERER_DESCRIPTION'		),
('AGENDA_WANDERER_2',				'LOC_AGENDA_WANDERER_2_NAME',	'LOC_AGENDA_WANDERER_2_DESCRIPTION'		),
('AGENDA_WYRMS',					'LOC_AGENDA_WYRMS_NAME',	    'LOC_AGENDA_WYRMS_DESCRIPTION'			),
('AGENDA_WYRMS_2',					'LOC_AGENDA_WYRMS_2_NAME',		'LOC_AGENDA_WYRMS_2_DESCRIPTION'		);


INSERT INTO AgendaTraits			
(AgendaType,				    TraitType		    )	VALUES
('AGENDA_RADIANCE',		'TRAIT_AGENDA_RADIANCE'		),
('AGENDA_RADIANCE_2',	'TRAIT_AGENDA_RADIANCE_2'	),
('AGENDA_GOD_OF_GODS',	'TRAIT_AGENDA_GOD_OF_GODS'	),
('AGENDA_GOD_OF_GODS_2','TRAIT_AGENDA_GOD_OF_GODS_2'),
('AGENDA_WANDERER',	    'TRAIT_AGENDA_WANDERER'	    ),
('AGENDA_WANDERER_2',	'TRAIT_AGENDA_WANDERER_2'	),
('AGENDA_WYRMS',	    'TRAIT_AGENDA_WYRMS'	    ),
('AGENDA_WYRMS_2',	    'TRAIT_AGENDA_WYRMS_2'	    );


-- ('LEADER_RADIANCE',		'AGENDA_RADIANCE_2'		),
-- ('LEADER_GOD_OF_GODS',	'AGENDA_GOD_OF_GODS_2'	),
-- ('LEADER_WANDERER',		'AGENDA_WANDERER_2'		),
-- ('LEADER_WYRMS',		'AGENDA_WYRMS'			);
INSERT INTO HistoricalAgendas	
(LeaderType,			AgendaType				) VALUES
('LEADER_RADIANCE',		'AGENDA_RADIANCE'		),
('LEADER_GOD_OF_GODS',	'AGENDA_GOD_OF_GODS'	),
('LEADER_WANDERER',		'AGENDA_WANDERER'		),
('LEADER_WYRMS',		'AGENDA_WYRMS_2'		);


INSERT INTO ExclusiveAgendas			
(AgendaOne,					AgendaTwo						)	VALUES
('AGENDA_RADIANCE_2',		'AGENDA_COUNTER_REFORMER'		),
('AGENDA_WANDERER_2',		'AGENDA_OPTIMUS_PRINCEPS'		);

INSERT INTO ExclusiveAgendas			
(AgendaOne,					AgendaTwo				)	VALUES
('AGENDA_RADIANCE',			'AGENDA_SYCOPHANT'		),
('AGENDA_RADIANCE',			'AGENDA_SYMPATHIZER'	),
('AGENDA_GOD_OF_GODS',		'AGENDA_SYCOPHANT'		),
('AGENDA_GOD_OF_GODS',		'AGENDA_SYMPATHIZER'	),
('AGENDA_WANDERER',			'AGENDA_EXPLORER'		),
('AGENDA_WYRMS_2',			'AGENDA_EXPLOITATIVE'	);

INSERT INTO TraitModifiers
(TraitType,						ModifierId										) VALUES 
('TRAIT_AGENDA_RADIANCE',		'TRAIT_AGENDA_RADIANCE_LIKE_GOLD_AGE'           ),
('TRAIT_AGENDA_RADIANCE',		'TRAIT_AGENDA_RADIANCE_HATE_DARK_AGE'           ),
('TRAIT_AGENDA_RADIANCE',		'TRAIT_AGENDA_RADIANCE_A_BIT_HATE_NO_GOLD_AGE'  ),
('TRAIT_AGENDA_RADIANCE_2',		'AGENDA_MODIFIER_SAME_RELIGION'					),
('TRAIT_AGENDA_RADIANCE_2',		'AGENDA_MODIFIER_ENCROACHING_RELIGION'			),
('TRAIT_AGENDA_GOD_OF_GODS',	'TRAIT_AGENDA_GOD_OF_GODS_LIKE_NO_GOLD_AGE'     ),
('TRAIT_AGENDA_GOD_OF_GODS_2',	'TRAIT_AGENDA_GOD_OF_GODS_2_STANDING_MORE_ARMY'	),
('TRAIT_AGENDA_WANDERER',		'TRAIT_AGENDA_WANDERER_LIKE_HIGH_EXPLORATION'   ),
('TRAIT_AGENDA_WANDERER',		'TRAIT_AGENDA_WANDERER_HATE_LOW_EXPLORATION'    ),
('TRAIT_AGENDA_WANDERER_2',		'AGENDA_OPTIMUS_PRINCEPS'						),
('TRAIT_AGENDA_WYRMS',			'TRAIT_AGENDA_WYRMS_LIKE_HIGH_HAPPINESS'        ),
('TRAIT_AGENDA_WYRMS',			'TRAIT_AGENDA_WYRMS_HATE_LOW_HAPPINESS'         ),
('TRAIT_AGENDA_WYRMS_2',		'TRAIT_AGENDA_WYRMS_2_EXPLOITATION'				);

INSERT INTO Modifiers 
(ModifierId,										ModifierType,                                  RunOnce,    Permanent, NewOnly, OwnerRequirementSetId,  SubjectRequirementSetId				) VALUES 
('TRAIT_AGENDA_RADIANCE_LIKE_GOLD_AGE',				'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',    0,          0,          0,      NULL,                   'PLAYER_HAS_GOLDEN_AGE'             ),
('TRAIT_AGENDA_RADIANCE_HATE_DARK_AGE',				'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',    0,          0,          0,      NULL,                   'PLAYER_HAS_DARK_AGE'               ),
('TRAIT_AGENDA_RADIANCE_A_BIT_HATE_NO_GOLD_AGE',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',    0,          0,          0,      NULL,                   'PLAYER_NO_GOLDEN_AGE_REQUIREMENTS' ),
('TRAIT_AGENDA_GOD_OF_GODS_LIKE_NO_GOLD_AGE',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',    0,          0,          0,      NULL,                   'PLAYER_NO_GOLDEN_AGE_REQUIREMENTS' ),
('TRAIT_AGENDA_GOD_OF_GODS_2_STANDING_MORE_ARMY',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	0,			0,			0,		NULL,					'PLAYER_HAS_HIGH_STANDING_ARMY'		),
('TRAIT_AGENDA_WYRMS_LIKE_HIGH_HAPPINESS',			'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',    0,          0,          0,      NULL,                   'PLAYER_HAS_HIGH_HAPPINESS'         ),
('TRAIT_AGENDA_WYRMS_HATE_LOW_HAPPINESS',			'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',    0,          0,          0,      NULL,                   'PLAYER_HAS_LOW_HAPPINESS'          ),
('TRAIT_AGENDA_WYRMS_2_EXPLOITATION',				'MODIFIER_PLAYER_DIPLOMACY_AGENDA_EXPLOITATIVE',0,			0,			0,		'ON_TURN_STARTED',		'PLAYER_IS_MAJOR_CIV_KNOWN_30_TURNS'),
('TRAIT_AGENDA_WANDERER_LIKE_HIGH_EXPLORATION',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',    0,          0,          0,      NULL,                   'PLAYER_HAS_HIGH_EXPLORATION'       ),
('TRAIT_AGENDA_WANDERER_HATE_LOW_EXPLORATION',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',    0,          0,          0,      NULL,                   'PLAYER_HAS_LOW_EXPLORATION'        );


INSERT INTO ModifierArguments 
(ModifierId,										Name,							Value,													Type				) VALUES 
('TRAIT_AGENDA_RADIANCE_LIKE_GOLD_AGE',				'InitialValue',					'17'													,'ARGTYPE_IDENTITY'	), 
('TRAIT_AGENDA_RADIANCE_LIKE_GOLD_AGE',				'SimpleModifierDescription',	'LOC_TRAIT_AGENDA_RADIANCE_MODIFIER_GOLD_DES'			,'ARGTYPE_IDENTITY'	), 
('TRAIT_AGENDA_RADIANCE_LIKE_GOLD_AGE',				'StatementKey',					'LOC_DIPLO_KUDO_EXIT_LEADER_RADIANCE_ANY'				,'ARGTYPE_IDENTITY'	),
('TRAIT_AGENDA_RADIANCE_A_BIT_HATE_NO_GOLD_AGE',	'InitialValue',					'-3'													,'ARGTYPE_IDENTITY'	), 
('TRAIT_AGENDA_RADIANCE_A_BIT_HATE_NO_GOLD_AGE',	'SimpleModifierDescription',	'LOC_TRAIT_AGENDA_RADIANCE_A_BIT_HATE_NO_GOLD_AGE_DES'	,'ARGTYPE_IDENTITY'	), 
('TRAIT_AGENDA_RADIANCE_A_BIT_HATE_NO_GOLD_AGE',	'StatementKey',					'LOC_DIPLO_WARNING_EXIT_LEADER_RADIANCE_ANY'			,'ARGTYPE_IDENTITY'	),
('TRAIT_AGENDA_RADIANCE_HATE_DARK_AGE',				'InitialValue',					'-20'													,'ARGTYPE_IDENTITY'	), 
('TRAIT_AGENDA_RADIANCE_HATE_DARK_AGE',				'SimpleModifierDescription',	'LOC_TRAIT_AGENDA_RADIANCE_MODIFIER_DARK_DES'			,'ARGTYPE_IDENTITY'	), 
('TRAIT_AGENDA_RADIANCE_HATE_DARK_AGE',				'StatementKey',					'LOC_DIPLO_WARNING_EXIT_LEADER_RADIANCE_ANY'			,'ARGTYPE_IDENTITY'	),
('TRAIT_AGENDA_GOD_OF_GODS_LIKE_NO_GOLD_AGE',		'InitialValue',					'5'														,'ARGTYPE_IDENTITY'	), 
('TRAIT_AGENDA_GOD_OF_GODS_LIKE_NO_GOLD_AGE',		'SimpleModifierDescription',	'LOC_TRAIT_AGENDA_GOD_OF_GODS_LIKE_NO_GOLD_AGE_DES'		,'ARGTYPE_IDENTITY'	), 
('TRAIT_AGENDA_GOD_OF_GODS_LIKE_NO_GOLD_AGE',		'StatementKey',					'LOC_TRAIT_AGENDA_GOD_OF_GODS_LIKE_NO_GOLD_AGE_KEY'		,'ARGTYPE_IDENTITY'	),
('TRAIT_AGENDA_GOD_OF_GODS_2_STANDING_MORE_ARMY',	'InitialValue',					'10'													,'ARGTYPE_IDENTITY'	), 
('TRAIT_AGENDA_GOD_OF_GODS_2_STANDING_MORE_ARMY',	'SimpleModifierDescription',	'LOC_TRAIT_AGENDA_GOD_OF_GODS_2_STANDING_MORE_ARMY_DES'	,'ARGTYPE_IDENTITY'	), 
('TRAIT_AGENDA_GOD_OF_GODS_2_STANDING_MORE_ARMY',	'StatementKey',					'LOC_TRAIT_AGENDA_GOD_OF_GODS_2_STANDING_MORE_ARMY_KEY'	,'ARGTYPE_IDENTITY'	),
('TRAIT_AGENDA_WYRMS_LIKE_HIGH_HAPPINESS',			'InitialValue',					'10'													,'ARGTYPE_IDENTITY'	), 
('TRAIT_AGENDA_WYRMS_LIKE_HIGH_HAPPINESS',			'SimpleModifierDescription',	'LOC_TRAIT_AGENDA_WYRMS_LIKE_HIGH_HAPPINESS_DES'		,'ARGTYPE_IDENTITY'	), 
('TRAIT_AGENDA_WYRMS_LIKE_HIGH_HAPPINESS',			'StatementKey',					'LOC_TRAIT_AGENDA_WYRMS_LIKE_HIGH_HAPPINESS_KEY'		,'ARGTYPE_IDENTITY'	),
('TRAIT_AGENDA_WYRMS_HATE_LOW_HAPPINESS',			'InitialValue',					'-5'													,'ARGTYPE_IDENTITY'	), 
('TRAIT_AGENDA_WYRMS_HATE_LOW_HAPPINESS',			'SimpleModifierDescription',	'LOC_TRAIT_AGENDA_WYRMS_HATE_LOW_HAPPINESS_DES'			,'ARGTYPE_IDENTITY'	), 
('TRAIT_AGENDA_WYRMS_HATE_LOW_HAPPINESS',			'StatementKey',					'LOC_TRAIT_AGENDA_WYRMS_HATE_LOW_HAPPINESS_KEY'			,'ARGTYPE_IDENTITY'	),
('TRAIT_AGENDA_WANDERER_LIKE_HIGH_EXPLORATION',		'InitialValue',					'9'														,'ARGTYPE_IDENTITY'	), 
('TRAIT_AGENDA_WANDERER_LIKE_HIGH_EXPLORATION',		'SimpleModifierDescription',	'LOC_TRAIT_AGENDA_WANDERER_LIKE_HIGH_EXPLORATION_DES'	,'ARGTYPE_IDENTITY'	), 
('TRAIT_AGENDA_WANDERER_LIKE_HIGH_EXPLORATION',		'StatementKey',					'LOC_TRAIT_AGENDA_WANDERER_LIKE_HIGH_EXPLORATION_KEY'	,'ARGTYPE_IDENTITY'	),
('TRAIT_AGENDA_WANDERER_HATE_LOW_EXPLORATION',		'InitialValue',					'-3'													,'ARGTYPE_IDENTITY'	), 
('TRAIT_AGENDA_WANDERER_HATE_LOW_EXPLORATION',		'SimpleModifierDescription',	'LOC_TRAIT_AGENDA_WANDERER_HATE_LOW_EXPLORATION_DES'	,'ARGTYPE_IDENTITY'	), 
('TRAIT_AGENDA_WANDERER_HATE_LOW_EXPLORATION',		'StatementKey',					'LOC_TRAIT_AGENDA_WANDERER_HATE_LOW_EXPLORATION_KEY'	,'ARGTYPE_IDENTITY'	),
('TRAIT_AGENDA_WYRMS_2_EXPLOITATION',				'HighScoreThreshold',			'16'													,'ARGTYPE_IDENTITY'	), 
('TRAIT_AGENDA_WYRMS_2_EXPLOITATION',				'IncrementValue',				'0'														,'ARGTYPE_IDENTITY'	), 
('TRAIT_AGENDA_WYRMS_2_EXPLOITATION',				'InitialValue',					'0'														,'ARGTYPE_IDENTITY'	), 
('TRAIT_AGENDA_WYRMS_2_EXPLOITATION',				'LowScoreThreshold',			'-14'													,'ARGTYPE_IDENTITY'	), 
('TRAIT_AGENDA_WYRMS_2_EXPLOITATION',				'MaxDiploModifierMagnitude',	'10'													,'ARGTYPE_IDENTITY'	), 
('TRAIT_AGENDA_WYRMS_2_EXPLOITATION',				'NationalParkConstructionValue','10'													,'ARGTYPE_IDENTITY'	), 
('TRAIT_AGENDA_WYRMS_2_EXPLOITATION',				'PlotFeatureRemovalValue',		'1'														,'ARGTYPE_IDENTITY'	), 
('TRAIT_AGENDA_WYRMS_2_EXPLOITATION',				'SimpleModifierDescription',	'LOC_TRAIT_AGENDA_WYRMS_2_EXPLOITATION_DES'				,'ARGTYPE_IDENTITY'	), 
('TRAIT_AGENDA_WYRMS_2_EXPLOITATION',				'StatementKey',					'LOC_TRAIT_AGENDA_WYRMS_2_EXPLOITATION_KEY'				,'ARGTYPE_IDENTITY'	), 
('TRAIT_AGENDA_WYRMS_2_EXPLOITATION',				'TileImprovementHighThreshold', '80'													,'ARGTYPE_IDENTITY'	), 
('TRAIT_AGENDA_WYRMS_2_EXPLOITATION',				'TileImprovementLowThreshold',	'36'													,'ARGTYPE_IDENTITY'	), 
('TRAIT_AGENDA_WYRMS_2_EXPLOITATION',				'TileImprovementPreferenceValue','27'													,'ARGTYPE_IDENTITY'	);


INSERT INTO ModifierStrings
(ModifierId,											Context,	Text								)   VALUES
('TRAIT_AGENDA_RADIANCE_LIKE_GOLD_AGE',			        'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	),
('TRAIT_AGENDA_RADIANCE_HATE_DARK_AGE',			        'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	),
('TRAIT_AGENDA_RADIANCE_A_BIT_HATE_NO_GOLD_AGE',		'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	),
('TRAIT_AGENDA_GOD_OF_GODS_LIKE_NO_GOLD_AGE',			'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	),
('TRAIT_AGENDA_WYRMS_2_EXPLOITATION',					'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	),
('TRAIT_AGENDA_WANDERER_LIKE_HIGH_EXPLORATION',		    'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	),
('TRAIT_AGENDA_WANDERER_HATE_LOW_EXPLORATION',		    'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	);


INSERT INTO AiListTypes
(ListType								        )       VALUES
('LEADER_RADIANCE_Settle'                       ),
('LEADER_RADIANCE_Strategies'                   ),
('LEADER_RADIANCE_Religious'                    ),
('LEADER_RADIANCE_Alliances'                    ),
('LEADER_RADIANCE_Buildings'                    ),
('LEADER_RADIANCE_Civics'                       ),
('LEADER_RADIANCE_Diplo'                        ),
('LEADER_RADIANCE_Districts'                    ),
('LEADER_RADIANCE_Techs'                        ),
('LEADER_RADIANCE_Yields'                       ),
('LEADER_GOD_OF_GODS_Armys'						),
('LEADER_GOD_OF_GODS_Strategies'				),
('LEADER_GOD_OF_GODS_Alliances'					),
('LEADER_GOD_OF_GODS_Buildings'					),
('LEADER_GOD_OF_GODS_Civics'					),
('LEADER_GOD_OF_GODS_Diplo'						),
('LEADER_GOD_OF_GODS_Districts'					),
('LEADER_GOD_OF_GODS_Techs'						),
('LEADER_GOD_OF_GODS_Yields'					),
('LEADER_WANDERER_Settle'						),
('LEADER_WANDERER_Alliances'					),
('LEADER_WANDERER_Buildings'					),
('LEADER_WANDERER_Civics'						),
('LEADER_WANDERER_Diplo'						),
('LEADER_WANDERER_Districts'					),
('LEADER_WANDERER_Techs'						),
('LEADER_WANDERER_Yields'						),
('LEADER_WYRMS_Settle'							),
('LEADER_WYRMS_Strategies'						),
('LEADER_WYRMS_Alliances'						),
('LEADER_WYRMS_Buildings'						),
('LEADER_WYRMS_Civics'							),
('LEADER_WYRMS_Diplo'							),
('LEADER_WYRMS_Districts'						),
('LEADER_WYRMS_Techs'							),
('LEADER_WYRMS_Yields'							);

INSERT INTO AiLists	
(ListType,						                AgendaType,					  System	        )	VALUES
('LEADER_RADIANCE_Settle'                       , 'TRAIT_AGENDA_RADIANCE',   'PlotEvaluations'  ),
('LEADER_RADIANCE_Strategies'                   , 'TRAIT_AGENDA_RADIANCE',   'Strategies'    ),
('LEADER_RADIANCE_Religious'                    , 'TRAIT_AGENDA_RADIANCE',   'TriggeredTrees'),
('LEADER_RADIANCE_Alliances'                    , 'TRAIT_AGENDA_RADIANCE',   'Alliances'     ),
('LEADER_RADIANCE_Buildings'                    , 'TRAIT_AGENDA_RADIANCE',   'Buildings'     ),
('LEADER_RADIANCE_Civics'                       , 'TRAIT_AGENDA_RADIANCE',   'Civics'        ),
('LEADER_RADIANCE_Diplo'                        , 'TRAIT_AGENDA_RADIANCE',   'Diplo'         ),
('LEADER_RADIANCE_Districts'                    , 'TRAIT_AGENDA_RADIANCE',   'Districts'     ),
('LEADER_RADIANCE_Techs'                        , 'TRAIT_AGENDA_RADIANCE',   'Techs'         ),
('LEADER_RADIANCE_Yields'                       , 'TRAIT_AGENDA_RADIANCE',   'Yields'        ),
('LEADER_GOD_OF_GODS_Armys'							, 'TRAIT_AGENDA_GOD_OF_GODS',	'UnitPromotionClasses'),
('LEADER_GOD_OF_GODS_Strategies'					, 'TRAIT_AGENDA_GOD_OF_GODS',     'Strategies')  ,
('LEADER_GOD_OF_GODS_Alliances'						, 'TRAIT_AGENDA_GOD_OF_GODS',   'Alliances'     ),
('LEADER_GOD_OF_GODS_Buildings'						, 'TRAIT_AGENDA_GOD_OF_GODS',   'Buildings'     ),
('LEADER_GOD_OF_GODS_Civics'						, 'TRAIT_AGENDA_GOD_OF_GODS',   'Civics'        ),
('LEADER_GOD_OF_GODS_Diplo'							, 'TRAIT_AGENDA_GOD_OF_GODS',   'Diplo'         ),
('LEADER_GOD_OF_GODS_Districts'						, 'TRAIT_AGENDA_GOD_OF_GODS',   'Districts'     ),
('LEADER_GOD_OF_GODS_Techs'							, 'TRAIT_AGENDA_GOD_OF_GODS',   'Techs'         ),
('LEADER_GOD_OF_GODS_Yields'						, 'TRAIT_AGENDA_GOD_OF_GODS',   'Yields'        ),
('LEADER_WANDERER_Settle'                       , 'TRAIT_AGENDA_WANDERER',   'PlotEvaluations'),
('LEADER_WANDERER_Alliances'                    , 'TRAIT_AGENDA_WANDERER',   'Alliances'     ),
('LEADER_WANDERER_Buildings'                    , 'TRAIT_AGENDA_WANDERER',   'Buildings'     ),
('LEADER_WANDERER_Civics'                       , 'TRAIT_AGENDA_WANDERER',   'Civics'        ),
('LEADER_WANDERER_Diplo'                        , 'TRAIT_AGENDA_WANDERER',   'Diplo'         ),
('LEADER_WANDERER_Districts'                    , 'TRAIT_AGENDA_WANDERER',   'Districts'     ),
('LEADER_WANDERER_Techs'                        , 'TRAIT_AGENDA_WANDERER',   'Techs'         ),
('LEADER_WANDERER_Yields'                       , 'TRAIT_AGENDA_WANDERER',   'Yields'        ),
('LEADER_WYRMS_Settle'                       , 'TRAIT_AGENDA_WYRMS_2',   'PlotEvaluations'     ),
('LEADER_WYRMS_Strategies'                   , 'TRAIT_AGENDA_WYRMS_2',   'Strategies'    ),
('LEADER_WYRMS_Alliances'                    , 'TRAIT_AGENDA_WYRMS_2',   'Alliances'     ),
('LEADER_WYRMS_Buildings'                    , 'TRAIT_AGENDA_WYRMS_2',   'Buildings'     ),
('LEADER_WYRMS_Civics'                       , 'TRAIT_AGENDA_WYRMS_2',   'Civics'        ),
('LEADER_WYRMS_Diplo'                        , 'TRAIT_AGENDA_WYRMS_2',   'Diplo'         ),
('LEADER_WYRMS_Districts'                    , 'TRAIT_AGENDA_WYRMS_2',   'Districts'     ),
('LEADER_WYRMS_Techs'                        , 'TRAIT_AGENDA_WYRMS_2',   'Techs'         ),
('LEADER_WYRMS_Yields'                       , 'TRAIT_AGENDA_WYRMS_2',   'Yields'        );

INSERT INTO AiFavoredItems		
(ListType,							Favored,Value,  Item,						                StringVal	)	VALUES	
('LEADER_RADIANCE_Settle' ,         1,      0,		'Nearest Friendly City',                    null		),
('LEADER_RADIANCE_Strategies' ,     1,      80,		'VICTORY_STRATEGY_RELIGIOUS_VICTORY',       null		),
('LEADER_RADIANCE_Religious' ,      1,      80,		'TRIGGER_RELIGIOUS_CITY_CONVERTED',         null		),
('LEADER_RADIANCE_Alliances',		0,		0,		'ALLIANCE_RESEARCH',					    null		),
('LEADER_RADIANCE_Alliances',	    0,		0,		'ALLIANCE_CULTURAL',					    null		),
('LEADER_RADIANCE_Alliances',		0,		0,		'ALLIANCE_ECONOMIC',					    null		),
('LEADER_RADIANCE_Alliances',		0,		0,		'ALLIANCE_MILITARY',					    null		),
('LEADER_RADIANCE_Alliances',		0,		2,	    'ALLIANCE_RELIGIOUS',					    null		),
('LEADER_RADIANCE_Buildings',		1,		3,		'BUILDING_MONT_ST_MICHEL',				    null		),
('LEADER_RADIANCE_Buildings',		1,		30,		'BUILDING_TEMPLE',				            null		),
('LEADER_RADIANCE_Buildings',		1,		50,		'BUILDING_SHRINE',				            null		),
('LEADER_RADIANCE_Civics',			1,		30,		'CIVIC_THEOLOGY',					        null		),
('LEADER_RADIANCE_Diplo',			1,		2,		'DIPLOACTION_OPEN_BORDERS',			        null		),
('LEADER_RADIANCE_Districts',		1,		100,	'DISTRICT_TEMPLE_OF_THE_BLACK_EGG_SQUARE',	null		),
('LEADER_RADIANCE_Districts',		1,		100,	'DISTRICT_PALACE_GROUNDS',					null		),
('LEADER_RADIANCE_Districts',		1,		15,		'DISTRICT_FLOURISHING_CROSSROADS',			null		),
('LEADER_RADIANCE_Techs',			1,		2,		'TECH_STIRRUPS',						    null		),
('LEADER_RADIANCE_Techs',		    1,	    99,		'TECH_ASTROLOGY',						    null		),
('LEADER_RADIANCE_Yields',			0,	    5,		'YIELD_SCIENCE',						    null		),
('LEADER_GOD_OF_GODS_Armys',		1,      100,    'PROMOTION_CLASS_HEAVY_CAVALRY',			null    ),
('LEADER_GOD_OF_GODS_Strategies',   1,      99,     'VICTORY_STRATEGY_MILITARY_VICTORY',        null    ),
('LEADER_GOD_OF_GODS_Alliances',    1,      2,      'ALLIANCE_RESEARCH',                        null    ),
('LEADER_GOD_OF_GODS_Alliances',    1,      0,      'ALLIANCE_CULTURAL',                        null    ),
('LEADER_GOD_OF_GODS_Alliances',    1,      0,      'ALLIANCE_ECONOMIC',                        null    ),
('LEADER_GOD_OF_GODS_Alliances',    1,      1,      'ALLIANCE_MILITARY',                        null    ),
('LEADER_GOD_OF_GODS_Alliances',    0,      0,      'ALLIANCE_RELIGIOUS',                       null    ),
('LEADER_GOD_OF_GODS_Buildings',    1,      10,     'BUILDING_COLOSSEUM_OF_FOOLS',              null    ),
('LEADER_GOD_OF_GODS_Buildings',    1,      8,      'BUILDING_TERRACOTTA_ARMY',                 null    ),
('LEADER_GOD_OF_GODS_Civics',       1,      0,      'CIVIC_MILITARY_TRADITION',                 null    ),
('LEADER_GOD_OF_GODS_Diplo',        1,      50,     'DIPLOACTION_DECLARE_SURPRISE_WAR',         null    ),
('LEADER_GOD_OF_GODS_Districts',    1,      2,     'DISTRICT_FLOURISHING_CROSSROADS',          null    ),
('LEADER_GOD_OF_GODS_Districts',    1,      100,    'DISTRICT_TEMPLE_OF_THE_BLACK_EGG_SQUARE',  null    ),
('LEADER_GOD_OF_GODS_Districts',    1,      19,     'DISTRICT_ENCAMPMENT',                      null    ),
('LEADER_GOD_OF_GODS_Districts',    1,      2,      'DISTRICT_ENTERTAINMENT_COMPLEX',           null    ),
('LEADER_GOD_OF_GODS_Districts',    1,      2,      'DISTRICT_CAMPUS',                          null    ),
('LEADER_GOD_OF_GODS_Techs',        1,      8,      'TECH_HORSEBACK_RIDING',                    null    ),
('LEADER_GOD_OF_GODS_Techs',        1,      20,     'TECH_STIRRUPS',                            null    ),
('LEADER_GOD_OF_GODS_Techs',        1,      8,      'TECH_BALLISTICS',                          null    ),
('LEADER_GOD_OF_GODS_Techs',        1,      8,      'TECH_THE_WHEEL',                           null    ),
('LEADER_GOD_OF_GODS_Techs',        1,      8,      'TECH_COMBUSTION',                          null    ),
('LEADER_GOD_OF_GODS_Techs',        1,      8,      'TECH_CURRENCY',                            null    ),
('LEADER_GOD_OF_GODS_Yields',       1,      10,     'YIELD_SCIENCE',                            null    ),
('LEADER_WANDERER_Settle' ,         1,      9,      'Foreign Continent',                        null    ),
('LEADER_WANDERER_Settle' ,         1,      100,    'UNIT_SETTLER',                             null    ),
('LEADER_WANDERER_Alliances',       1,      2,      'ALLIANCE_RESEARCH',                        null    ),
('LEADER_WANDERER_Alliances',       1,      2,      'ALLIANCE_CULTURAL',                        null    ),
('LEADER_WANDERER_Alliances',       1,      0,      'ALLIANCE_ECONOMIC',                        null    ),
('LEADER_WANDERER_Alliances',       1,      2,      'ALLIANCE_MILITARY',                        null    ),
('LEADER_WANDERER_Alliances',       1,      0,      'ALLIANCE_RELIGIOUS',                       null    ),
('LEADER_WANDERER_Buildings',       1,      5,      'BUILDING_TEACHERS_ARCHIVES',               null    ),
('LEADER_WANDERER_Buildings',       1,      2,      'BUILDING_COLOSSEUM_OF_FOOLS',              null    ),
('LEADER_WANDERER_Civics',          1,      0,      'CIVIC_EARLY_EMPIRE',                       null    ),
('LEADER_WANDERER_Diplo',           1,      20,     'DIPLOACTION_ALLIANCE_TEAMUP',              null    ),
('LEADER_WANDERER_Districts',       1,      100,    'DISTRICT_TEMPLE_OF_THE_BLACK_EGG_SQUARE',  null    ),
('LEADER_WANDERER_Districts',       1,      50,     'DISTRICT_FLOURISHING_CROSSROADS',          null    ),
('LEADER_WANDERER_Techs',           1,      2,      'TECH_SHIPBUILDING',                        null    ),
('LEADER_WANDERER_Techs',           1,      2,      'TECH_STIRRUPS',                            null    ),
('LEADER_WANDERER_Techs',           1,      2,      'TECH_THE_WHEEL',                           null    ),
('LEADER_WANDERER_Techs',           1,      5,      'TECH_CURRENCY',                            null    ),
('LEADER_WANDERER_Yields',          0,      10,     'YIELD_FAITH',                              null    ),
('LEADER_WYRMS_Settle' ,            1,      0,		'Nearest Friendly City',                    null    ),
('LEADER_WYRMS_Settle' ,			1,      10,		'UNIT_SETTLER',                             null    ),
('LEADER_WYRMS_Strategies' ,        1,      30,     'VICTORY_STRATEGY_SCIENCE_VICTORY',         null    ),
('LEADER_WYRMS_Alliances',          1,      10,     'ALLIANCE_RESEARCH',                        null    ),
('LEADER_WYRMS_Alliances',          1,      5,      'ALLIANCE_CULTURAL',                        null    ),
('LEADER_WYRMS_Alliances',          1,      2,      'ALLIANCE_ECONOMIC',                        null    ),
('LEADER_WYRMS_Alliances',          1,      0,      'ALLIANCE_MILITARY',                        null    ),
('LEADER_WYRMS_Alliances',          1,      5,      'ALLIANCE_RELIGIOUS',                       null    ),
('LEADER_WYRMS_Buildings',          1,      3,      'BUILDING_TEACHERS_ARCHIVES',               null    ),
('LEADER_WYRMS_Buildings',          1,      3,      'BUILDING_PLEASURE_HOUSE',                  null    ),
('LEADER_WYRMS_Buildings',          1,      3,      'BUILDING_TEMPLE',                          null    ),
('LEADER_WYRMS_Buildings',          1,      3,      'BUILDING_SHRINE',                          null    ),
('LEADER_WYRMS_Buildings',          1,      3,      'BUILDING_UNIVERSITY',                      null    ),
('LEADER_WYRMS_Buildings',          1,      3,      'BUILDING_PYRAMIDS',                        null    ),
('LEADER_WYRMS_Buildings',          1,      1,      'BUILDING_OXFORD_UNIVERSITY',               null    ),
('LEADER_WYRMS_Buildings',          1,      1,      'BUILDING_FORBIDDEN_CITY',                  null    ),
('LEADER_WYRMS_Civics',             1,      12,     'CIVIC_FEUDALISM',                          null    ),
('LEADER_WYRMS_Diplo',              1,      20,     'DIPLOACTION_ALLIANCE_TEAMUP',              null    ),
('LEADER_WYRMS_Districts',          1,      100,    'DISTRICT_TEMPLE_OF_THE_BLACK_EGG_SQUARE',  null    ),
('LEADER_WYRMS_Districts',          1,      5,		'DISTRICT_FLOURISHING_CROSSROADS',          null    ),
('LEADER_WYRMS_Districts',          1,      40,     'DISTRICT_PALACE_GROUNDS',                  null    ),
('LEADER_WYRMS_Districts',          1,      5,      'DISTRICT_CAMPUS',                          null    ),
('LEADER_WYRMS_Techs',              1,      1,      'TECH_STIRRUPS',                            null    ),
('LEADER_WYRMS_Techs',              1,      5,      'TECH_CURRENCY',                            null    ),
('LEADER_WYRMS_Yields',             1,      20,     'YIELD_SCIENCE',                            null    );