
.PHONY: weshnet-app
weshnet-app:
	@echo "create the expo project"
	npx create-expo-app $(APP_NAME) --template blank
	@echo "Running npx expo prebuild..."
	cd $(APP_NAME) && npx expo prebuild
	@echo "install weshnet-expo"
	cd $(APP_NAME) && npm install --save weshnet-expo --registry http://localhost:4873
	@echo "Building weshnet-expo with pod install"
	cd $(APP_NAME)/ios && pod install
	@echo "Running npx expo build:ios"
	cd $(APP_NAME) && 
