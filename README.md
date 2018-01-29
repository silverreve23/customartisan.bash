<p align="center">
    <img src="http://www.cloudways.com/blog/wp-content/uploads/Create-Custom-Artisan-Commands-with-Laravel-Banner.jpg" width="546">
</p>

<p align="center">
    Custom artisan for create file patterns
</p>


## How to install

* **Step 1.** Add downloaded or cloned project to your project root folder.
* **Step 2.** Go to downloaded or cloned project folder.
* **Step 3.** Open terminal and run command **make**.


## Example

Before:

```php

<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFlightsTable extends Migration
{
    /**
    * Run the migrations.
    *
    * @return void
    */
    public function up()
    {
        Schema::create('flights', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('airline');
            $table->timestamps();
        });
    }

    /**
    * Reverse the migrations.
    *
    * @return void
    */
    public function down()
    {
        Schema::drop('flights');
    }
}

```

After:

```php

<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

#-------------------------------------------------------------------------------
# @class CreateFlightsTable
# Class handle migrate
#-------------------------------------------------------------------------------
class CreateFlightsTable extends Migration{

    public $tableName = 'flights';

    #---------------------------------------------------------------------------
    # @method create
    # @access private
    # @params (object) Blueprint
    # @return callback
    # Metod before create table structure
    #---------------------------------------------------------------------------
    private function create(){
        return function(Blueprint $table){
            $table->increments('id');
            $table->string('name');
            $table->string('airline');
            $table->timestamps();
        };
    }

    #---------------------------------------------------------------------------
    # @method up
    # @access public
    # @params void
    # @return void
    # Metod create table
    #---------------------------------------------------------------------------
    public function up(){
        Schema::create(
            $this->tableName,
            $this->create()
        );
    }

    #---------------------------------------------------------------------------
    # @method down
    # @access public
    # @params void
    # @return void
    # Metod drop table
    #---------------------------------------------------------------------------
    public function down(){
        Schema::dropIfExists(
            $this->tableName
        );
    }

}

```