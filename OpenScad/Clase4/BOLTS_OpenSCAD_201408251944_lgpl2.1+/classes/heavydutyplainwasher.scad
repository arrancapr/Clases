/* Generated by BOLTS, do not modify */
function heavydutyplainwasher_table_0(idx) =
//d1, d2, s
idx == "M10" ? [10.5, 25.0, 4.0] :
idx == "M24" ? [25.0, 50.0, 10.0] :
idx == "M27" ? [28.0, 60.0, 10.0] :
idx == "M20" ? [21.0, 44.0, 8.0] :
idx == "M22" ? [23.0, 50.0, 8.0] :
idx == "M30" ? [31.0, 68.0, 10.0] :
idx == "M5" ? [5.3, 15.0, 2.0] :
idx == "M4" ? [4.3, 12.0, 1.6] :
idx == "M6" ? [6.4, 17.0, 3.0] :
idx == "M14" ? [15.0, 36.0, 6.0] :
idx == "M3" ? [3.2, 9.0, 1.0] :
idx == "M16" ? [17.0, 40.0, 6.0] :
idx == "M18" ? [19.0, 44.0, 8.0] :
idx == "M12" ? [13.0, 30.0, 6.0] :
idx == "M8" ? [8.4, 21.0, 4.0] :
"Error";

function heavydutyplainwasher_dims(key="M10", part_mode="default") = [
	["s", BOLTS_convert_to_default_unit(heavydutyplainwasher_table_0(key)[2],"mm")],
	["d2", BOLTS_convert_to_default_unit(heavydutyplainwasher_table_0(key)[1],"mm")],
	["key", key],
	["d1", BOLTS_convert_to_default_unit(heavydutyplainwasher_table_0(key)[0],"mm")]];

function heavydutyplainwasher_conn(location,key="M10", part_mode="default") = new_cs(
	origin=washerConn(BOLTS_convert_to_default_unit(heavydutyplainwasher_table_0(key)[1],"mm"), BOLTS_convert_to_default_unit(heavydutyplainwasher_table_0(key)[2],"mm"), location)[0],
	axes=washerConn(BOLTS_convert_to_default_unit(heavydutyplainwasher_table_0(key)[1],"mm"), BOLTS_convert_to_default_unit(heavydutyplainwasher_table_0(key)[2],"mm"), location)[1]);

module heavydutyplainwasher_geo(key, part_mode){
	washer1(
		get_dim(heavydutyplainwasher_dims(key, part_mode),"d1"),
		get_dim(heavydutyplainwasher_dims(key, part_mode),"d2"),
		get_dim(heavydutyplainwasher_dims(key, part_mode),"s")
	);
};

module DIN7349(key="M10", part_mode="default"){
	BOLTS_check_parameter_type("DIN7349","key",key,"Table Index");
	if(BOLTS_MODE == "bom"){
		if(!(part_mode == "diff")){
			echo(str("Heavy duty plain washer DIN 7349 ",key,""));
		}
		cube();
	} else {
		heavydutyplainwasher_geo(key, part_mode);
	}
};

function DIN7349_dims(key="M10", part_mode="default") = heavydutyplainwasher_dims(key, part_mode);

function DIN7349_conn(location,key="M10", part_mode="default") = heavydutyplainwasher_conn(location,key, part_mode);

module MetricHeavyDutyPlainWasher(key="M10", part_mode="default"){
	BOLTS_check_parameter_type("MetricHeavyDutyPlainWasher","key",key,"Table Index");
	if(BOLTS_MODE == "bom"){
		if(!(part_mode == "diff")){
			echo(str("Heavy duty plain washer ",key,""));
		}
		cube();
	} else {
		heavydutyplainwasher_geo(key, part_mode);
	}
};

function MetricHeavyDutyPlainWasher_dims(key="M10", part_mode="default") = heavydutyplainwasher_dims(key, part_mode);

function MetricHeavyDutyPlainWasher_conn(location,key="M10", part_mode="default") = heavydutyplainwasher_conn(location,key, part_mode);

