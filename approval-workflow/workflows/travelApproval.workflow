{
	"contents": {
		"4cb4ac22-c1ac-4ea2-b92b-d1ac2230b409": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "travelapproval",
			"subject": "travelApproval",
			"name": "travelApproval",
			"documentation": "Workflow to get approval for a travel",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"619ca5ed-ac4a-4a70-b3ba-12f0b8686f5a": {
					"name": "Approve/Reject Travel"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"5e8b561b-ae81-4878-a0d5-6071b6f11cd3": {
					"name": "SequenceFlow3"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"619ca5ed-ac4a-4a70-b3ba-12f0b8686f5a": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approve/Reject Travel for {$context.empData.firstName} {$context.empData.lastName}",
			"description": "Travel is approved or rejected based on the Total Price.",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy}",
			"formReference": "/forms/travelApproval/approvalform.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask2",
			"name": "Approve/Reject Travel"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "619ca5ed-ac4a-4a70-b3ba-12f0b8686f5a"
		},
		"5e8b561b-ae81-4878-a0d5-6071b6f11cd3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "619ca5ed-ac4a-4a70-b3ba-12f0b8686f5a",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"967d6366-ea94-4b36-a05f-796614057c09": {},
				"a5ecd177-f7a7-418c-b990-7e0cbb4c9799": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 340,
			"y": 100,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,117 238,117",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "967d6366-ea94-4b36-a05f-796614057c09",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"967d6366-ea94-4b36-a05f-796614057c09": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 188,
			"y": 88,
			"width": 100,
			"height": 60,
			"object": "619ca5ed-ac4a-4a70-b3ba-12f0b8686f5a"
		},
		"a5ecd177-f7a7-418c-b990-7e0cbb4c9799": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "238,117.75 357.5,117.75",
			"sourceSymbol": "967d6366-ea94-4b36-a05f-796614057c09",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "5e8b561b-ae81-4878-a0d5-6071b6f11cd3"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 3,
			"startevent": 1,
			"endevent": 1,
			"usertask": 2
		}
	}
}