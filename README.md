# Network Programming Assignment 4

* README are written by Yu Lei.

* How to run:
    *  Enter "make -f Makefile" to compile the code.
    *  Use the command "./proxy <ip to bind> <port to bind> " to open the proxy server.
    *  Open another Terminal and use the command "./client <proxy address> <proxy port> <URL to retrieve> " to create a client.


* For Client(myClient.cpp):
* findFileName() - Get the file name from the url string to store web page.

* For proxy(myServer.cpp):
* class CacheNode: The data structure for the information and body of web page, use it to store in the cache
* map<string, CacheNode*> cache: Use map to construct the cache, the key is the url, the value is the CacheNode
* void printCache() : Print the Cache
* time_t stringToTimeT(string) : Transform string to timt_t format
* string timeTtoString(time_t) : transform time_t to string format
* time_t getTime() : Get the current time 
* string cutURL(string) : Cut the header "http://" or "https://" of the url
* bool isFresh(CacheNode*): Find this cache is fresh or not
* CacheNode* getPage(string): Send request to the web server and generate the cache node
* CacheNode* inCache(string): Get the cache node if the url is in cache.
* void eviction(CacheNode*) : Evict one node if the cache is full
* CacheNode* notInCache(string): Get the cache node if the url is not in cache.
* string extractRequestURL(char*): Transfer the client request to the url
* vector<string> strsplit(string, string): Split certain part of string
* CacheNode* createNode(string, string, string): Use the received response to generate the cache node.



* Group distribution: 
    * Yulei writes the server part, modified client part to add the feature of finding the file name and writing to file.
    * Zeyu Wang writes the client part, do the test case, and modified both part to access the test.
