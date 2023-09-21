CREATE TABLE GroupMember
(
	GroupKey VARCHAR(4) NOT NULL,
	MemberKey VARCHAR(4) NOT NULL,
	CONSTRAINT FK_GroupKey FOREIGN KEY (GroupKey) REFERENCES Groups(GroupKey),
	CONSTRAINT FK_MemberKey FOREIGN KEY (MemberKey) REFERENCES GroupStyle(MemberKey)
);
GO

CREATE TABLE CustomerPreference
(
	CustomerKey VARCHAR(4) NOT NULL,
	StyleKey VARCHAR(4) NOT NULL,
	StylePreferenceRating CHAR(1),
	CONSTRAINT PK_CustomerPreference PRIMARY KEY (CustomerKey, StyleKey),
	CONSTRAINT FK_CustomerKey FOREIGN KEY (CustomerKey) REFERENCES Customers(CustomerKey),
	CONSTRAINT FK_StyleKey FOREIGN KEY (StyleKey) REFERENCES GroupStyle(StyleKey)
);