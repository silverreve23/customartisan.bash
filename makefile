main: 

	@echo -e '\n\e[34mRun custom artisan make controller'
	@cp ./stubs/controller/controller.plain.stub ../vendor/laravel/framework/src/Illuminate/Routing/Console/stubs/
	@echo -e '\n\e[32mCustom creater controller created\n'
	
	@echo -e '\n\e[34mRun custom artisan make model'
	@cp ./stubs/model/model.stub ../vendor/laravel/framework/src/Illuminate/Foundation/Console/stubs/
	@echo -e '\n\e[32mCustom creater model created\n'
	
	@echo -e '\n\e[34mRun custom artisan make migrate from the model'
	@cp ./stubs/migrate/create.stub ../vendor/laravel/framework/src/Illuminate/Database/Migrations/stubs/
	@echo -e '\n\e[32mCustom creater migrate from the model created\n'

