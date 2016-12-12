#encoding=utf-8
import datetime

def tako():
	while True:
		month, day = map(int, raw_input().split())
		if month == day == 0:
			break

		date1 = datetime.date(2004,month,day)
		tag = date1.weekday()
		print syori(tag + 1)

def syori(m):
	if m == 1:
		return "Monday"
	elif m == 2:
		return "Tuesday"
	elif m == 3:
		return "Wednesday"
	elif m == 4:
		return "Thursday"
	elif m == 5:
		return "Friday"
	elif m == 6:
		return "Saturday"
	elif m == 7:
		return "Sunday"

if __name__ == "__main__":
	tako()


