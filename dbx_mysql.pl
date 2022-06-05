%dbx = (
	epoch_to_timestamp_fn => 'FROM_UNIXTIME',
	to_hex_string => sub {
		my ($bin) = @_;
		return "X'" . unpack("H*", $bin) . "'";
	},
	column_info_type_col => 'mysql_type_name',
);

1;
