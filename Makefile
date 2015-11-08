# `adocker` is alias to `azk docker`

all:
	# latest
	adocker build -t mansante/hornetq ./2.4.0

	# dev 
	adocker build -t mansante/hornetq:2.4.0-dev ./2.4.0-dev

	# version tagged
	adocker build -t mansante/hornetq:2.4.0 ./2.4.0

no-cache:
	# latest
	adocker build --rm --no-cache -t mansante/hornetq ./2.4.0

	# dev
	adocker build --rm --no-cache -t mansante/hornetq:2.4.0-dev ./2.4.0-dev

	# version tagged
	adocker build --rm --no-cache -t mansante/hornetq:2.4.0 ./2.4.0
	