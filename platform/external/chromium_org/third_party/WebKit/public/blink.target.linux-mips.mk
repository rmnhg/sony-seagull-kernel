# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := GYP
LOCAL_MODULE := third_party_WebKit_public_blink_gyp
LOCAL_MODULE_STEM := blink
LOCAL_MODULE_SUFFIX := .stamp
LOCAL_MODULE_TAGS := optional
gyp_intermediate_dir := $(call local-intermediates-dir)
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared)

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES := \
	$(call intermediates-dir-for,STATIC_LIBRARIES,third_party_WebKit_Source_web_webkit_gyp)/third_party_WebKit_Source_web_webkit_gyp.a \
	$(call intermediates-dir-for,STATIC_LIBRARIES,third_party_WebKit_Source_platform_blink_platform_gyp)/third_party_WebKit_Source_platform_blink_platform_gyp.a \
	$(call intermediates-dir-for,GYP,third_party_WebKit_public_blink_minimal_gyp)/blink_minimal.stamp

GYP_GENERATED_OUTPUTS :=

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

### Rules for final target.
# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: third_party_WebKit_public_blink_gyp

# Alias gyp target name.
.PHONY: blink
blink: third_party_WebKit_public_blink_gyp

LOCAL_MODULE_PATH := $(PRODUCT_OUT)/gyp_stamp
LOCAL_UNINSTALLABLE_MODULE := true

include $(BUILD_SYSTEM)/base_rules.mk

$(LOCAL_BUILT_MODULE): $(LOCAL_ADDITIONAL_DEPENDENCIES)
	$(hide) echo "Gyp timestamp: $@"
	$(hide) mkdir -p $(dir $@)
	$(hide) touch $@
