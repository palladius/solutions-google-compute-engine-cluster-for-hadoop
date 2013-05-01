
install-dependencies: hadoop-1.0.4.tar.gz httplib2 python-gflags-2.0 mock.py

hadoop-1.0.4.tar.gz: 
	wget http://apache.marz.ca/hadoop/common/hadoop-1.0.4/hadoop-1.0.4.tar.gz
	tar zxf hadoop-1.0.4.tar.gz
	mv hadoop-1.0.4.tar.gz hadoop-1.0.4-original.tar.gz
	patch -p0 < hadoop-1.0.4.patch
	tar zcf hadoop-1.0.4.tar.gz hadoop-1.0.4

httplib2:
	  wget https://httplib2.googlecode.com/files/httplib2-0.8.tar.gz
	  tar zxf httplib2-0.8.tar.gz
	  ln -s httplib2-0.8/python2/httplib2 .

python-gflags-2.0:
	  wget http://python-gflags.googlecode.com/files/python-gflags-2.0.tar.gz
	  # Set up the library in compute_engine_cluster_for_hadoop directory.
	  tar zxf python-gflags-2.0.tar.gz
	  ln -s python-gflags-2.0/gflags.py .
	  ln -s python-gflags-2.0/gflags_validators.py .

mock.py:
	wget https://pypi.python.org/packages/source/m/mock/mock-1.0.1.tar.gz
	#Set up the library in compute_engine_cluster_for_hadoop directory.
	tar zxf mock-1.0.1.tar.gz
	ln -s mock-1.0.1/mock.py .
