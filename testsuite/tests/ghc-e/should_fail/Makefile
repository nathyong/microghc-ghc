TOP=../../..
include $(TOP)/mk/boilerplate.mk
include $(TOP)/mk/test.mk

T7962:
	'$(TEST_HC)' $(TEST_HC_OPTS) -ignore-dot-ghci -e "return ("

T9905fail1:
	'$(TEST_HC)' $(TEST_HC_OPTS) -ignore-dot-ghci -e "import This.Module.Does.Not.Exist"

T9905fail2:
	'$(TEST_HC)' $(TEST_HC_OPTS) -ignore-dot-ghci -e "import Data.List (bogusIdentifier)"

T9905fail3:
	'$(TEST_HC)' $(TEST_HC_OPTS) -ignore-dot-ghci -e "import Prelude (+)" # syntax error

T9930fail:
	'$(TEST_HC)' $(TEST_HC_OPTS) -ignore-dot-ghci -x hs T9930
