CC=clang
RUSTFLAGS=-C linker=rust-lld -C linker-flavor=ld.lld
export

sccache: check-target check-install-root
	cargo install --target $(TARGET) --root $(INSTALL_ROOT) --no-default-features sccache

check-target:
ifndef TARGET
	$(error TARGET is undefined)
endif

check-install-root:
ifndef INSTALL_ROOT
	$(error INSTALL_ROOT is undefined)
endif
