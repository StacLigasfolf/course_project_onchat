-- ������������� 

use onchat;

CREATE OR REPLACE VIEW chat_info 
as select interest, criterion
from chats, chat_types
where chat_types.interest_id = chats.interest 

CREATE OR REPLACE VIEW user_info 
as select name, age
from users, info_user
where info_user.user_id = users.name

-- ��������� ��������� � �������, ��������"
-- ����� ��������� ����� ���������� ����������� � ����������� �� ������� �����

delimiter //
CREATE PROCEDURE hello()
BEGIN
	CASE 
		WHEN CURTIME() BETWEEN '06:00:00' AND '12:00:00' THEN
			SELECT '������ ����';
		WHEN CURTIME() BETWEEN '12:00:00' AND '18:00:00' THEN
			SELECT '������ ����';
		WHEN CURTIME() BETWEEN '18:00:00' AND '00:00:00' THEN
			SELECT '������ �����';
		ELSE
			SELECT '������ ����';
	END CASE;
END //
delimiter ;





