<?php
return [
    'id' => 'clientes',
    'language' => 'es',
    // the basePath of the application will be the `clientes` directory
    'basePath' => __DIR__,
    // this is where the application will find all controllers
    'controllerNamespace' => 'micro\controllers',
    // set an alias to enable autoloading of classes from the 'micro' namespace
    'aliases' => [
        '@micro' => __DIR__,
    ],
    'components' => [
        'db' => [
            'class' => 'yii\db\Connection',
            'dsn' => 'mysql:host=localhost;dbname=ejercicio-reactjs-materialize-micro-frameworksyii2',
            'username' => 'root',
            'password' => '',
            'charset' => 'utf8',
        ],
        'urlManager' => [
            'enablePrettyUrl' => true,
            'enableStrictParsing' => false,
            'showScriptName' => false,
            'rules' => [
                ['class' => 'yii\rest\UrlRule', 'pluralize' => false, 'controller' => 'usuarios'],
                ['class' => 'yii\rest\UrlRule', 'pluralize' => false, 'controller' => 'usuario-pagos'],
                ['class' => 'yii\rest\UrlRule', 'pluralize' => false, 'controller' => 'conceptos'],
            ],
        ]
    ],


];
