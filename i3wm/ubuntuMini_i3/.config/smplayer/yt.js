// Version: 2017-05-31

// Obsolete function
function aclara(a) {
	var d = a.split(".");
	var id = d[0].length + "." + (a.length - d[0].length - 1);

	if (id == "42.43") {
		return aclara_f(a);
	}
	return "";
}

function aclara_p(a,p) {
	var d = a.split(".");
	var id = d[0].length + "." + (a.length - d[0].length - 1);

	if (p == "vflyC4_W-/en_US") {
		return aclara_f(a);
	}
	return "";
}

function aclara_f(a) {
	a=a.split("");
	oE.lB(a,1);
	oE.nu(a,47);
	oE.KS(a,24);
	oE.lB(a,3);
	oE.nu(a,49);
	oE.KS(a,54);
	oE.lB(a,1);
	return a.join("");
}

var oE = {nu:function(a){a.reverse()},
lB:function(a,b){a.splice(0,b)},
KS:function(a,b){var c=a[0];a[0]=a[b%a.length];a[b]=c} };

// A: NDIuNDM=
// B: dmZseUM0X1ct
// C: MjAxNy0wNS0zMQ==
// D: c3RzPTE3MzE2
// E: b0U=
