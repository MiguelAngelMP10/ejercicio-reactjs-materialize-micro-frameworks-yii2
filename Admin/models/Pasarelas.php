<?php

namespace micro\models;

use Yii;

/**
 * This is the model class for table "pasarelas".
 *
 * @property int $id
 * @property string $nombrePasarela
 * @property string $clavePublica
 * @property string $claveSecreta
 */
class Pasarelas extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'pasarelas';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nombrePasarela', 'clavePublica', 'claveSecreta'], 'required'],
            [['nombrePasarela', 'claveSecreta'], 'string', 'max' => 100],
            [['clavePublica'], 'string', 'max' => 200],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'nombrePasarela' => 'Nombre Pasarela',
            'clavePublica' => 'Clave Publica',
            'claveSecreta' => 'Clave Secreta',
        ];
    }
}
