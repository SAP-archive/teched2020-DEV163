var decision = {
	"UserId": $.usertasks.usertask3.last.processor,
	"Role": "Central Manager",
	"Action": $.usertasks.usertask3.last.decision,
	"Comment": $.context.comment
};

$.context.History.push(decision);
$.context.comment = "";

$.context.decision = $.usertasks.usertask3.last.decision;
