const bill = [22, 295, 176, 440, 37, 105, 10, 1100, 86, 52];
const tips = [];
const totals = [];

function calcTip(bill_) {
	return bill_ >= 50 && bill_ <= 300 ? bill_ * 0.15 : bill_ * 0.2;
}

function calcAvg(avg) {
	let summed = 0;
	for (let i = 0; i < avg.length; i++) {
		summed += avg[i];
	}

	return summed / avg.length;
}

for (let i = 0; i < bill.length; i++) {
	tips.push(calcTip(bill[i]));
	totals[i] = tips[i] + bill[i];
}

console.log(tips, totals);

console.log(calcAvg(tips));
console.log(calcAvg(totals));
