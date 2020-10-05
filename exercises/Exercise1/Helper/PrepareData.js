// Change this value:
var ruleServiceId = "a37df8246b2048dfba6f07c46e6ed25f";

// -----------------------------------------------------------------------------------------
// no modifications needed below this line

// copy process initiator into context
$.context.startedBy = $.info.startedBy;

// check if this is the first time we come here (process start) or a rework trip
var decision;
if ($.context.History) {
	// handle rework
	decision = {
		"UserId": $.usertasks.usertask2.last.processor,
		"Role": "Requester",
		"Action": "Reworked",
		"Comment": $.context.comment
	};
} else {
 	// initialize context
	$.context.Requester.RequestDate = new Date().toISOString().slice(0, 10);
	$.context.History = [];
	decision = {
		"UserId": $.info.startedBy,
		"Role": "Requester",
		"Action": "Initial Request",
		"Comment": $.context.Requester.Comment
	};
}

$.context.History.push(decision);
$.context.comment = "";

/************ Prepare Input Payload to Execute Rules ****************/
var details = {
	"Currency": $.context.Investment.Currency,
	"Country": $.context.Investment.Country,
	"Type": $.context.Investment.Type,
	"TotalCost": $.context.Investment.TotalCost
};

var rulesPayload = {
	"RuleServiceId": ruleServiceId,
	"RuleServiceRevision": "Trial",
	"Vocabulary": [ { "Investment": details } ]
};

$.context.rulesPayload = rulesPayload;

/************ Update String versions of numeric parameters ****************/
$.context.Investment.sCAPEX = $.context.Investment.CAPEX.toString();
$.context.Investment.sROI = $.context.Investment.ROI.toString();
$.context.Investment.sTotalCost = $.context.Investment.TotalCost.toString();
