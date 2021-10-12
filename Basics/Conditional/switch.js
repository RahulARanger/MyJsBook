const signal = ":)";

switch (signal) {
	case ">_<": {
		console.log("why are u shy?");
		break; // without this this overflows
	}
	case ":)": {
		console.log("Keep that up");
		// overflows to case :D (until next case or default case)
	}
	case ":D": {
		console.log("no other emotion?");
		break;
	}
	case ":(": {
		console.log("Here comes the depressed kid!");
		break;
	}
	default: {
		console.log("idk");
	}
}

switch (signal) {
	case ":|": {
		console.log("default case");
	}
}
// if there's no default case then no worries it wont raise any exception or error
