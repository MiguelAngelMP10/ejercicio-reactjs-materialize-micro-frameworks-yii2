<?php

namespace micro\models;

use Yii;

/**
 * This is the model class for table "suscripciones".
 *
 * @property int $id
 * @property string $suscripcion
 * @property string $fechaInicio
 * @property string $estatus
 */
class Suscripciones extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'suscripciones';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['suscripcion', 'fechaInicio', 'estatus'], 'required'],
            [['fechaInicio'], 'safe'],
            [['suscripcion'], 'string', 'max' => 250],
            [['estatus'], 'string', 'max' => 120],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'suscripcion' => 'Suscripcion',
            'fechaInicio' => 'Fecha Inicio',
            'estatus' => 'Estatus',
        ];
    }
}
