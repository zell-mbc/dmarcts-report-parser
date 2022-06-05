%dbx = (
	epoch_to_timestamp_fn => 'TO_TIMESTAMP',
	to_hex_string => sub {
		my ($bin) = @_;
		return "'\\x" . unpack("H*", $bin) . "'";
	},
	column_info_type_col => 'pg_type',
);

1;
