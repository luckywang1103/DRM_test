CFLAGS = -I /home/lei/test/drm/libdrm-2.4.50/build/include/
CFLAGS += -I /home/lei/test/drm/libdrm-2.4.50/build/include/libdrm
CFLAGS += -I /home/lei/test/drm/libdrm-2.4.50/build/include/libkms
LDFLAGS = -L /home/lei/test/drm/libdrm-2.4.50/build/lib/ -ldrm

all:
	$(CC) $(CFLAGS) $(LDFLAGS) modeset-single-buffer.c -o modeset-single-buffer
	$(CC) $(CFLAGS) $(LDFLAGS) modeset-double-buffer.c -o modeset-double-buffer
	$(CC) $(CFLAGS) $(LDFLAGS) modeset-page-flip.c -o modeset-page-flip
	$(CC) $(CFLAGS) $(LDFLAGS) modeset-plane-test.c -o modeset-plane-test
	$(CC) $(CFLAGS) $(LDFLAGS) modeset-plane-test-simple.c -o modeset-plane-test-simple

.PHONY: clean
clean:
	rm -f *.o
