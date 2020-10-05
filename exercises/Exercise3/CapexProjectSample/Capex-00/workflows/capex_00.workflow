{
	"contents": {
		"d03a4b3f-a231-4514-a2bc-933968552128": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "capex_00",
			"subject": "CAPEX Approval for '${context.Title}'",
			"businessKey": "${context.RequestId}",
			"customAttributes": [{
				"id": "RequestId",
				"label": "Request Id",
				"type": "string",
				"value": "${context.RequestId}"
			}, {
				"id": "Title",
				"label": "Title",
				"type": "string",
				"value": "${context.Title}"
			}, {
				"id": "Type",
				"label": "Type",
				"type": "string",
				"value": "${context.Investment.Type}"
			}, {
				"id": "Country",
				"label": "Country",
				"type": "string",
				"value": "${context.Investment.Country}"
			}, {
				"id": "ROI",
				"label": "ROI",
				"type": "string",
				"value": "${context.Investment.ROI}"
			}, {
				"id": "CAPEX",
				"label": "CAPEX",
				"type": "string",
				"value": "${context.Investment.CAPEX}"
			}, {
				"id": "TotalCost",
				"label": "Total Cost",
				"type": "string",
				"value": "${context.Investment.TotalCost}"
			}, {
				"id": "Currency",
				"label": "Currency",
				"type": "string",
				"value": "${context.Investment.Currency}"
			}],
			"name": "CAPEX_00",
			"documentation": "Capital Expenditure Approval",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "Capex Request"
				},
				"182ac21f-a5e4-43af-afbd-f41ba19aac08": {
					"name": "End (Rejection)"
				},
				"8001154b-d55d-4e03-99a6-6d26dbec9114": {
					"name": "End (Rejection)"
				},
				"d2adab09-50d0-44c1-a7e2-a79bfb8975d3": {
					"name": "End (Approval)"
				}
			},
			"activities": {
				"d16e93a3-bbc6-48c4-923f-62d2ed5e51fd": {
					"name": "Prepare Data"
				},
				"ac35e31c-eee3-47e3-a287-24ca6109bcaa": {
					"name": "Retrieve Approval Steps"
				},
				"f00531a3-3197-4ef1-92f2-17ee2fda4f2d": {
					"name": "Approval required?"
				},
				"c807dcf4-55d8-49b1-89de-9bf4786e6d48": {
					"name": "Approval Task (Local Manager)"
				},
				"073f7d94-0675-484a-a3a1-2f51cf6e1dac": {
					"name": "Handle Approval (Local Manager)"
				},
				"23b3084c-fdea-4641-9470-2756c5f4ca88": {
					"name": "Approval result?"
				},
				"fc655482-eca5-40a2-8b3d-3f7c397eb41e": {
					"name": "join"
				},
				"ab891927-6d18-436b-8d21-5224b6a7178b": {
					"name": "Rework Task"
				},
				"6b47d5c0-74ef-41f7-aec5-c99bc9a4ccd4": {
					"name": "Approval required?"
				},
				"9c677b5c-1068-4cac-bc53-81a38a0ffae2": {
					"name": "Approval Task (Central Manager)"
				},
				"7a41b5ff-0fa0-4540-a9d8-a523b028e3a6": {
					"name": "Handle Approval (Central Manager)"
				},
				"b769f9bf-8b0d-4d0d-aea9-62a6ada20ec1": {
					"name": "Approval result?"
				}
			},
			"sequenceFlows": {
				"a74d43a8-ae5e-4d90-8f66-c2566fa957f2": {
					"name": "SequenceFlow2"
				},
				"af065c42-345e-4ea4-8b8e-576f8a1c876e": {
					"name": "SequenceFlow3"
				},
				"a69ef38e-c007-4dec-9147-8b204d64aa3f": {
					"name": "SequenceFlow4"
				},
				"e37f3e1f-c364-426b-a934-72140bb84c45": {
					"name": "yes"
				},
				"86b894ea-78ac-4984-b714-c2e0039dc302": {
					"name": "SequenceFlow6"
				},
				"8a875b60-93fd-475e-991a-35071016ed47": {
					"name": "SequenceFlow7"
				},
				"ebbd5e78-2292-487b-b303-739c6c17ff72": {
					"name": "Approve"
				},
				"eb60da82-b975-43f4-8e59-ccec36a5bc71": {
					"name": "no"
				},
				"699a8e90-5d54-4a84-b42a-b7a171a26acd": {
					"name": "Reject"
				},
				"9c90ddad-ff2c-4436-ac9b-cec4d0dfb2cf": {
					"name": "Rework"
				},
				"7e8a5243-664f-40ab-8985-eb9d8b2d7f01": {
					"name": "SequenceFlow15"
				},
				"8a6fa326-5662-464c-bc65-2e99d42935bd": {
					"name": "SequenceFlow16"
				},
				"dbc2a502-a97d-4754-b698-c2a3a3a491b1": {
					"name": "yes"
				},
				"8862c543-04dd-4ad6-af60-e2570ceaa21f": {
					"name": "SequenceFlow18"
				},
				"22c7b795-26df-426e-a9ea-34461a43f0f1": {
					"name": "SequenceFlow19"
				},
				"e051d60d-e1ef-46cb-b7cd-8452eaa316cd": {
					"name": "Approve"
				},
				"9ad23018-3698-40f4-abba-fdd72e5dcb59": {
					"name": "no"
				},
				"fed83bc1-71f5-448d-be35-9ed95270be5c": {
					"name": "Reject"
				},
				"0fdf6afe-8e92-4070-a7dd-dda91e46a9a8": {
					"name": "Rework"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "Capex Request",
			"sampleContextRefs": {
				"53b3be6b-ddc4-407c-93b7-b5e25bd3d205": {}
			}
		},
		"182ac21f-a5e4-43af-afbd-f41ba19aac08": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent2",
			"name": "End (Rejection)",
			"eventDefinitions": {
				"4ecaca2a-9347-4e1f-b4ce-47591f26ce90": {}
			}
		},
		"8001154b-d55d-4e03-99a6-6d26dbec9114": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent3",
			"name": "End (Rejection)",
			"eventDefinitions": {
				"919a2471-fcbb-4156-b861-475e1e531dc0": {}
			}
		},
		"d2adab09-50d0-44c1-a7e2-a79bfb8975d3": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent4",
			"name": "End (Approval)",
			"eventDefinitions": {
				"85237aff-cfba-45f4-be88-fbaae994595c": {}
			}
		},
		"d16e93a3-bbc6-48c4-923f-62d2ed5e51fd": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/CAPEX_00/PrepareData.js",
			"id": "scripttask1",
			"name": "Prepare Data"
		},
		"ac35e31c-eee3-47e3-a287-24ca6109bcaa": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "BusinessRulesV2",
			"path": "/rest/v2/workingset-rule-services",
			"httpMethod": "POST",
			"requestVariable": "${context.rulesPayload}",
			"responseVariable": "${context.approvalStepsResult}",
			"id": "servicetask1",
			"name": "Retrieve Approval Steps"
		},
		"f00531a3-3197-4ef1-92f2-17ee2fda4f2d": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "Approval required?",
			"default": "eb60da82-b975-43f4-8e59-ccec36a5bc71"
		},
		"c807dcf4-55d8-49b1-89de-9bf4786e6d48": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approval for '${context.Title}' in your role as Local Manager",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.startedBy}",
			"formReference": "/forms/CAPEX_00/CapexApproval_00.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "capexapproval_00"
			}, {
				"key": "formRevision",
				"value": "1"
			}],
			"id": "usertask1",
			"name": "Approval Task (Local Manager)"
		},
		"073f7d94-0675-484a-a3a1-2f51cf6e1dac": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/CAPEX_00/HandleApprovalLocalManager.js",
			"id": "scripttask2",
			"name": "Handle Approval (Local Manager)"
		},
		"23b3084c-fdea-4641-9470-2756c5f4ca88": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "Approval result?",
			"default": "699a8e90-5d54-4a84-b42a-b7a171a26acd"
		},
		"fc655482-eca5-40a2-8b3d-3f7c397eb41e": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway3",
			"name": "join"
		},
		"ab891927-6d18-436b-8d21-5224b6a7178b": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Rework for '${context.Title}'",
			"priority": "HIGH",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.startedBy}",
			"formReference": "/forms/CAPEX_00/CapexApproval_00.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "capexapproval_00"
			}, {
				"key": "formRevision",
				"value": "1"
			}],
			"id": "usertask2",
			"name": "Rework Task",
			"dueDateRef": "67f2d404-136a-40f6-9087-82be1ebf36ce"
		},
		"6b47d5c0-74ef-41f7-aec5-c99bc9a4ccd4": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway4",
			"name": "Approval required?",
			"default": "9ad23018-3698-40f4-abba-fdd72e5dcb59"
		},
		"9c677b5c-1068-4cac-bc53-81a38a0ffae2": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approval for '${context.Title}' in your role as Central Manager",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.startedBy}",
			"formReference": "/forms/CAPEX_00/CapexApproval_00.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "capexapproval_00"
			}, {
				"key": "formRevision",
				"value": "1"
			}],
			"id": "usertask3",
			"name": "Approval Task (Central Manager)"
		},
		"7a41b5ff-0fa0-4540-a9d8-a523b028e3a6": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/CAPEX_00/HandleApprovalCentralManager.js",
			"id": "scripttask3",
			"name": "Handle Approval (Central Manager)"
		},
		"b769f9bf-8b0d-4d0d-aea9-62a6ada20ec1": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway5",
			"name": "Approval result?",
			"default": "fed83bc1-71f5-448d-be35-9ed95270be5c"
		},
		"a74d43a8-ae5e-4d90-8f66-c2566fa957f2": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "d16e93a3-bbc6-48c4-923f-62d2ed5e51fd"
		},
		"af065c42-345e-4ea4-8b8e-576f8a1c876e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "d16e93a3-bbc6-48c4-923f-62d2ed5e51fd",
			"targetRef": "ac35e31c-eee3-47e3-a287-24ca6109bcaa"
		},
		"a69ef38e-c007-4dec-9147-8b204d64aa3f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "ac35e31c-eee3-47e3-a287-24ca6109bcaa",
			"targetRef": "f00531a3-3197-4ef1-92f2-17ee2fda4f2d"
		},
		"e37f3e1f-c364-426b-a934-72140bb84c45": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.approvalStepsResult.Result[0].Approvers.lm_required}",
			"id": "sequenceflow5",
			"name": "yes",
			"sourceRef": "f00531a3-3197-4ef1-92f2-17ee2fda4f2d",
			"targetRef": "c807dcf4-55d8-49b1-89de-9bf4786e6d48"
		},
		"86b894ea-78ac-4984-b714-c2e0039dc302": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "c807dcf4-55d8-49b1-89de-9bf4786e6d48",
			"targetRef": "073f7d94-0675-484a-a3a1-2f51cf6e1dac"
		},
		"8a875b60-93fd-475e-991a-35071016ed47": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "073f7d94-0675-484a-a3a1-2f51cf6e1dac",
			"targetRef": "23b3084c-fdea-4641-9470-2756c5f4ca88"
		},
		"ebbd5e78-2292-487b-b303-739c6c17ff72": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.decision == \"approve\"}",
			"id": "sequenceflow8",
			"name": "Approve",
			"sourceRef": "23b3084c-fdea-4641-9470-2756c5f4ca88",
			"targetRef": "fc655482-eca5-40a2-8b3d-3f7c397eb41e"
		},
		"eb60da82-b975-43f4-8e59-ccec36a5bc71": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "no",
			"sourceRef": "f00531a3-3197-4ef1-92f2-17ee2fda4f2d",
			"targetRef": "fc655482-eca5-40a2-8b3d-3f7c397eb41e"
		},
		"699a8e90-5d54-4a84-b42a-b7a171a26acd": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow10",
			"name": "Reject",
			"sourceRef": "23b3084c-fdea-4641-9470-2756c5f4ca88",
			"targetRef": "182ac21f-a5e4-43af-afbd-f41ba19aac08"
		},
		"9c90ddad-ff2c-4436-ac9b-cec4d0dfb2cf": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.decision == \"rework\"}",
			"id": "sequenceflow13",
			"name": "Rework",
			"sourceRef": "23b3084c-fdea-4641-9470-2756c5f4ca88",
			"targetRef": "ab891927-6d18-436b-8d21-5224b6a7178b"
		},
		"7e8a5243-664f-40ab-8985-eb9d8b2d7f01": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow15",
			"name": "SequenceFlow15",
			"sourceRef": "ab891927-6d18-436b-8d21-5224b6a7178b",
			"targetRef": "d16e93a3-bbc6-48c4-923f-62d2ed5e51fd"
		},
		"8a6fa326-5662-464c-bc65-2e99d42935bd": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow16",
			"name": "SequenceFlow16",
			"sourceRef": "fc655482-eca5-40a2-8b3d-3f7c397eb41e",
			"targetRef": "6b47d5c0-74ef-41f7-aec5-c99bc9a4ccd4"
		},
		"dbc2a502-a97d-4754-b698-c2a3a3a491b1": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.approvalStepsResult.Result[0].Approvers.cm_required}",
			"id": "sequenceflow17",
			"name": "yes",
			"sourceRef": "6b47d5c0-74ef-41f7-aec5-c99bc9a4ccd4",
			"targetRef": "9c677b5c-1068-4cac-bc53-81a38a0ffae2"
		},
		"8862c543-04dd-4ad6-af60-e2570ceaa21f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow18",
			"name": "SequenceFlow18",
			"sourceRef": "9c677b5c-1068-4cac-bc53-81a38a0ffae2",
			"targetRef": "7a41b5ff-0fa0-4540-a9d8-a523b028e3a6"
		},
		"22c7b795-26df-426e-a9ea-34461a43f0f1": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow19",
			"name": "SequenceFlow19",
			"sourceRef": "7a41b5ff-0fa0-4540-a9d8-a523b028e3a6",
			"targetRef": "b769f9bf-8b0d-4d0d-aea9-62a6ada20ec1"
		},
		"e051d60d-e1ef-46cb-b7cd-8452eaa316cd": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.decision == \"approve\"}",
			"id": "sequenceflow20",
			"name": "Approve",
			"sourceRef": "b769f9bf-8b0d-4d0d-aea9-62a6ada20ec1",
			"targetRef": "d2adab09-50d0-44c1-a7e2-a79bfb8975d3"
		},
		"9ad23018-3698-40f4-abba-fdd72e5dcb59": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow21",
			"name": "no",
			"sourceRef": "6b47d5c0-74ef-41f7-aec5-c99bc9a4ccd4",
			"targetRef": "d2adab09-50d0-44c1-a7e2-a79bfb8975d3"
		},
		"fed83bc1-71f5-448d-be35-9ed95270be5c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow22",
			"name": "Reject",
			"sourceRef": "b769f9bf-8b0d-4d0d-aea9-62a6ada20ec1",
			"targetRef": "8001154b-d55d-4e03-99a6-6d26dbec9114"
		},
		"0fdf6afe-8e92-4070-a7dd-dda91e46a9a8": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.decision == \"rework\"}",
			"id": "sequenceflow23",
			"name": "Rework",
			"sourceRef": "b769f9bf-8b0d-4d0d-aea9-62a6ada20ec1",
			"targetRef": "ab891927-6d18-436b-8d21-5224b6a7178b"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"de170562-68fa-4005-8355-58b2ea6f4354": {},
				"0a81574f-02ee-44cc-b93c-00e50a361712": {},
				"56798c7b-aa5e-446f-838d-1b68768d902b": {},
				"6d564a9c-16e8-4175-b210-c331373190de": {},
				"adc6ae21-2636-4156-b3cb-8dfe70303b00": {},
				"e4bdd6c7-92d4-45c6-8f41-1d1da98958e0": {},
				"cc47dd5e-3e4e-490b-bdeb-b6b3feb08edd": {},
				"a7b4a511-8647-454b-82bf-25f40e22c36d": {},
				"57212a2f-e91f-4829-8552-3083471f6668": {},
				"04aaf89b-e5a7-4501-bcfc-6e1fc2356779": {},
				"5a1cc1f7-5bb5-4407-9dc9-f78cfda2f23c": {},
				"82990f84-905b-43d7-8f69-3d9ec06a59d2": {},
				"9fb0971f-9080-4d57-bdcc-e98a1de95fdc": {},
				"ab2f4f2b-06b0-4ce7-be6b-607e50f214b8": {},
				"360e3cde-6aa9-4f90-9198-96a8583102a6": {},
				"0bbaba7e-0a91-463f-9cb5-619de433944b": {},
				"086fc5b1-c8eb-4f9a-ad56-e0e2492a3cfe": {},
				"0f040fa4-9e2b-4153-81c6-48771f73a948": {},
				"16e4fa8b-e3ed-4296-b76c-8ae1065ae376": {},
				"3a110c71-43cb-4400-9fd2-122b7f9f7793": {},
				"a012f0fd-40fd-427b-8055-0ea230036e94": {},
				"47d73331-5d08-43ba-949e-50756dfcabdb": {},
				"705546a2-0448-430a-9c55-591511cde32c": {},
				"03deb3e2-4ee9-4feb-a891-b3041276e02a": {},
				"96af997f-b942-4aeb-96c5-1112d2a5d929": {},
				"951616fd-9105-41ae-b977-5ade6cb74cf7": {},
				"fa46dad5-d174-4f1f-bcb0-d6b5b9036f80": {},
				"44ecf32d-d9d0-4ab6-b89c-919a542f76b1": {},
				"c305d0a4-6e71-44c9-b7e9-c7268af83cdb": {},
				"aae00ad1-86fa-4f21-bfc8-6a3111be3b3b": {},
				"ba7b4ddb-d96d-4633-99ac-2a38874bab7d": {},
				"4bb0e859-fa09-4edb-996a-33be618fe36c": {},
				"f77e2e1a-44f9-4144-928c-b4e493123ba0": {},
				"a6c2da42-ec16-4fd6-b8d5-882d87f646d1": {}
			}
		},
		"53b3be6b-ddc4-407c-93b7-b5e25bd3d205": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/CAPEX_00/CapexSampleStartPayload.json",
			"id": "default-start-context"
		},
		"4ecaca2a-9347-4e1f-b4ce-47591f26ce90": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition1"
		},
		"919a2471-fcbb-4156-b861-475e1e531dc0": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition2"
		},
		"85237aff-cfba-45f4-be88-fbaae994595c": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition3"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"de170562-68fa-4005-8355-58b2ea6f4354": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 182,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "d16e93a3-bbc6-48c4-923f-62d2ed5e51fd"
		},
		"0a81574f-02ee-44cc-b93c-00e50a361712": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,116 232,116",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "de170562-68fa-4005-8355-58b2ea6f4354",
			"object": "a74d43a8-ae5e-4d90-8f66-c2566fa957f2"
		},
		"56798c7b-aa5e-446f-838d-1b68768d902b": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 332,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "ac35e31c-eee3-47e3-a287-24ca6109bcaa"
		},
		"6d564a9c-16e8-4175-b210-c331373190de": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "282.5,116 331.5,116",
			"sourceSymbol": "de170562-68fa-4005-8355-58b2ea6f4354",
			"targetSymbol": "56798c7b-aa5e-446f-838d-1b68768d902b",
			"object": "af065c42-345e-4ea4-8b8e-576f8a1c876e"
		},
		"adc6ae21-2636-4156-b3cb-8dfe70303b00": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 478.5,
			"y": 95,
			"object": "f00531a3-3197-4ef1-92f2-17ee2fda4f2d"
		},
		"e4bdd6c7-92d4-45c6-8f41-1d1da98958e0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "382,116 499.5,116",
			"sourceSymbol": "56798c7b-aa5e-446f-838d-1b68768d902b",
			"targetSymbol": "adc6ae21-2636-4156-b3cb-8dfe70303b00",
			"object": "a69ef38e-c007-4dec-9147-8b204d64aa3f"
		},
		"cc47dd5e-3e4e-490b-bdeb-b6b3feb08edd": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 572.5,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "c807dcf4-55d8-49b1-89de-9bf4786e6d48"
		},
		"a7b4a511-8647-454b-82bf-25f40e22c36d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "499.5,116 622.5,116",
			"sourceSymbol": "adc6ae21-2636-4156-b3cb-8dfe70303b00",
			"targetSymbol": "cc47dd5e-3e4e-490b-bdeb-b6b3feb08edd",
			"object": "e37f3e1f-c364-426b-a934-72140bb84c45"
		},
		"57212a2f-e91f-4829-8552-3083471f6668": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 720.5,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "073f7d94-0675-484a-a3a1-2f51cf6e1dac"
		},
		"04aaf89b-e5a7-4501-bcfc-6e1fc2356779": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "622.5,116 770.5,116",
			"sourceSymbol": "cc47dd5e-3e4e-490b-bdeb-b6b3feb08edd",
			"targetSymbol": "57212a2f-e91f-4829-8552-3083471f6668",
			"object": "86b894ea-78ac-4984-b714-c2e0039dc302"
		},
		"5a1cc1f7-5bb5-4407-9dc9-f78cfda2f23c": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 867,
			"y": 95,
			"object": "23b3084c-fdea-4641-9470-2756c5f4ca88"
		},
		"82990f84-905b-43d7-8f69-3d9ec06a59d2": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "770.5,116 888,116",
			"sourceSymbol": "57212a2f-e91f-4829-8552-3083471f6668",
			"targetSymbol": "5a1cc1f7-5bb5-4407-9dc9-f78cfda2f23c",
			"object": "8a875b60-93fd-475e-991a-35071016ed47"
		},
		"9fb0971f-9080-4d57-bdcc-e98a1de95fdc": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 955.5,
			"y": 95,
			"object": "fc655482-eca5-40a2-8b3d-3f7c397eb41e"
		},
		"ab2f4f2b-06b0-4ce7-be6b-607e50f214b8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "888,116 976.5,116",
			"sourceSymbol": "5a1cc1f7-5bb5-4407-9dc9-f78cfda2f23c",
			"targetSymbol": "9fb0971f-9080-4d57-bdcc-e98a1de95fdc",
			"object": "ebbd5e78-2292-487b-b303-739c6c17ff72"
		},
		"360e3cde-6aa9-4f90-9198-96a8583102a6": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "499.5,95.5 499.5,-4 976.5,-4 976.5,95",
			"sourceSymbol": "adc6ae21-2636-4156-b3cb-8dfe70303b00",
			"targetSymbol": "9fb0971f-9080-4d57-bdcc-e98a1de95fdc",
			"object": "eb60da82-b975-43f4-8e59-ccec36a5bc71"
		},
		"0bbaba7e-0a91-463f-9cb5-619de433944b": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 870.5,
			"y": 10.5,
			"width": 35,
			"height": 35,
			"object": "182ac21f-a5e4-43af-afbd-f41ba19aac08"
		},
		"086fc5b1-c8eb-4f9a-ad56-e0e2492a3cfe": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "888,116 888,28",
			"sourceSymbol": "5a1cc1f7-5bb5-4407-9dc9-f78cfda2f23c",
			"targetSymbol": "0bbaba7e-0a91-463f-9cb5-619de433944b",
			"object": "699a8e90-5d54-4a84-b42a-b7a171a26acd"
		},
		"0f040fa4-9e2b-4153-81c6-48771f73a948": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 182,
			"y": 205,
			"width": 100,
			"height": 60,
			"object": "ab891927-6d18-436b-8d21-5224b6a7178b"
		},
		"16e4fa8b-e3ed-4296-b76c-8ae1065ae376": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "888,136.5 888,235 232,235",
			"sourceSymbol": "5a1cc1f7-5bb5-4407-9dc9-f78cfda2f23c",
			"targetSymbol": "0f040fa4-9e2b-4153-81c6-48771f73a948",
			"object": "9c90ddad-ff2c-4436-ac9b-cec4d0dfb2cf"
		},
		"3a110c71-43cb-4400-9fd2-122b7f9f7793": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "232,235 232,116",
			"sourceSymbol": "0f040fa4-9e2b-4153-81c6-48771f73a948",
			"targetSymbol": "de170562-68fa-4005-8355-58b2ea6f4354",
			"object": "7e8a5243-664f-40ab-8985-eb9d8b2d7f01"
		},
		"a012f0fd-40fd-427b-8055-0ea230036e94": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 1044,
			"y": 95,
			"object": "6b47d5c0-74ef-41f7-aec5-c99bc9a4ccd4"
		},
		"47d73331-5d08-43ba-949e-50756dfcabdb": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "976.5,116 1065,116",
			"sourceSymbol": "9fb0971f-9080-4d57-bdcc-e98a1de95fdc",
			"targetSymbol": "a012f0fd-40fd-427b-8055-0ea230036e94",
			"object": "8a6fa326-5662-464c-bc65-2e99d42935bd"
		},
		"705546a2-0448-430a-9c55-591511cde32c": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 1136,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "9c677b5c-1068-4cac-bc53-81a38a0ffae2"
		},
		"03deb3e2-4ee9-4feb-a891-b3041276e02a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1065,116 1186,116",
			"sourceSymbol": "a012f0fd-40fd-427b-8055-0ea230036e94",
			"targetSymbol": "705546a2-0448-430a-9c55-591511cde32c",
			"object": "dbc2a502-a97d-4754-b698-c2a3a3a491b1"
		},
		"96af997f-b942-4aeb-96c5-1112d2a5d929": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 1286,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "7a41b5ff-0fa0-4540-a9d8-a523b028e3a6"
		},
		"951616fd-9105-41ae-b977-5ade6cb74cf7": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1186,116 1336,116",
			"sourceSymbol": "705546a2-0448-430a-9c55-591511cde32c",
			"targetSymbol": "96af997f-b942-4aeb-96c5-1112d2a5d929",
			"object": "8862c543-04dd-4ad6-af60-e2570ceaa21f"
		},
		"fa46dad5-d174-4f1f-bcb0-d6b5b9036f80": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 1432.5,
			"y": 95,
			"object": "b769f9bf-8b0d-4d0d-aea9-62a6ada20ec1"
		},
		"44ecf32d-d9d0-4ab6-b89c-919a542f76b1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1336,116 1453.5,116",
			"sourceSymbol": "96af997f-b942-4aeb-96c5-1112d2a5d929",
			"targetSymbol": "fa46dad5-d174-4f1f-bcb0-d6b5b9036f80",
			"object": "22c7b795-26df-426e-a9ea-34461a43f0f1"
		},
		"c305d0a4-6e71-44c9-b7e9-c7268af83cdb": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1453.5,114 1627,114",
			"sourceSymbol": "fa46dad5-d174-4f1f-bcb0-d6b5b9036f80",
			"targetSymbol": "a6c2da42-ec16-4fd6-b8d5-882d87f646d1",
			"object": "e051d60d-e1ef-46cb-b7cd-8452eaa316cd"
		},
		"aae00ad1-86fa-4f21-bfc8-6a3111be3b3b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1065,95 1065,-53 1644,-53 1644,95",
			"sourceSymbol": "a012f0fd-40fd-427b-8055-0ea230036e94",
			"targetSymbol": "a6c2da42-ec16-4fd6-b8d5-882d87f646d1",
			"object": "9ad23018-3698-40f4-abba-fdd72e5dcb59"
		},
		"ba7b4ddb-d96d-4633-99ac-2a38874bab7d": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1432.5,
			"y": -22.5,
			"width": 35,
			"height": 35,
			"object": "8001154b-d55d-4e03-99a6-6d26dbec9114"
		},
		"4bb0e859-fa09-4edb-996a-33be618fe36c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1451.75,116 1451.75,-5",
			"sourceSymbol": "fa46dad5-d174-4f1f-bcb0-d6b5b9036f80",
			"targetSymbol": "ba7b4ddb-d96d-4633-99ac-2a38874bab7d",
			"object": "fed83bc1-71f5-448d-be35-9ed95270be5c"
		},
		"f77e2e1a-44f9-4144-928c-b4e493123ba0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1453.5,136.5 1453.5,235 232,235",
			"sourceSymbol": "fa46dad5-d174-4f1f-bcb0-d6b5b9036f80",
			"targetSymbol": "0f040fa4-9e2b-4153-81c6-48771f73a948",
			"object": "0fdf6afe-8e92-4070-a7dd-dda91e46a9a8"
		},
		"a6c2da42-ec16-4fd6-b8d5-882d87f646d1": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1626.5,
			"y": 94.5,
			"width": 35,
			"height": 35,
			"object": "d2adab09-50d0-44c1-a7e2-a79bfb8975d3"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"terminateeventdefinition": 3,
			"timereventdefinition": 1,
			"maildefinition": 1,
			"sequenceflow": 32,
			"startevent": 3,
			"endevent": 4,
			"usertask": 6,
			"servicetask": 2,
			"scripttask": 6,
			"mailtask": 1,
			"exclusivegateway": 6
		},
		"67f2d404-136a-40f6-9087-82be1ebf36ce": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "P2D",
			"id": "timereventdefinition1"
		}
	}
}