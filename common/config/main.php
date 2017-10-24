<?php

return [
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'components' => [
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        'user' => [
            'class' => 'webvimark\modules\UserManagement\components\UserConfig',
            'loginUrl'=>['auth/login'],
            // Comment this if you don't want to record user logins
            'on afterLogin' => function($event) {
        \webvimark\modules\UserManagement\models\UserVisitLog::newVisitor($event->identity->id);
    }
        ],
               /* 'view' => [
            'theme' => [
                'pathMap' => [
                    '@webvimark/module-user-management/views/auth' => '@app/frontend/views/auth'
                ],
            ],
        ],*/
    ],
    'modules' => [
        'user-management' => [
            'class' => 'webvimark\modules\UserManagement\UserManagementModule',
            'enableRegistration' => true,
            'rolesAfterRegistration'=>['JOB_SEEKER'],
            'registrationFormClass' => 'frontend\models\RegistrationFormWithProfile',
            // Add regexp validation to passwords. Default pattern does not restrict user and can enter any set of characters.
            // The example below allows user to enter :
            // any set of characters
            // (?=\S{8,}): of at least length 8
            // (?=\S*[a-z]): containing at least one lowercase letter
            // (?=\S*[A-Z]): and at least one uppercase letter
            // (?=\S*[\d]): and at least one number
            // $: anchored to the end of the string
            //'passwordRegexp' => '^\S*(?=\S{8,})(?=\S*[a-z])(?=\S*[A-Z])(?=\S*[\d])\S*$',
            // Here you can set your handler to change layout for any controller or action
            // Tip: you can use this event in any module
            'useEmailAsLogin'=>true,
            /*'on beforeAction' => function(yii\base\ActionEvent $event) {
        if ($event->action->uniqueId == 'user-management/auth/login') {
            $event->action->controller->layout = 'loginLayout.php';
        };
    },*/
        ],
    ],
];
