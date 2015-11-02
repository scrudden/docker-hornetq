all:
	# latest
	azk docker -- build -t mansante/hornetq ./2.4.0

	# dev 
	azk docker -- build -t mansante/hornetq:2.4.0-dev ./2.4.0-dev

	# version tagged
	azk docker -- build -t mansante/hornetq:2.4.0 ./2.4.0

--no-cache:
	# latest
	azk docker -- build --rm --no-cache -t mansante/hornetq ./2.4.0

	# dev
	azk docker -- build --rm --no-cache -t mansante/hornetq:2.4.0-dev ./2.4.0-dev

	# version tagged
	azk docker -- build --rm --no-cache -t mansante/hornetq:2.4.0 ./2.4.0
	