<?php

namespace micro\models;

use Yii;

/**
 * This is the model class for table "conceptos".
 *
 * @property int $id
 * @property string $concepto
 * @property string $descripcion
 * @property int $estatus
 */
class Conceptos extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'conceptos';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['concepto', 'descripcion'], 'required'],
            [['estatus'], 'integer'],
            [['concepto', 'descripcion'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'concepto' => 'Concepto',
            'descripcion' => 'Descripcion',
            'estatus' => 'Estatus',
        ];
    }
}
