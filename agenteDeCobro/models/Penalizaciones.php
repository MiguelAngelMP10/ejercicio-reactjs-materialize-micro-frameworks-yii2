<?php

namespace micro\models;

use Yii;

/**
 * This is the model class for table "penalizaciones".
 *
 * @property int $id
 * @property string $penalizacion
 * @property string $descripcion
 * @property int $estatus
 */
class Penalizaciones extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'penalizaciones';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['penalizacion', 'descripcion'], 'required'],
            [['estatus'], 'integer'],
            [['penalizacion', 'descripcion'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'penalizacion' => 'Penalizacion',
            'descripcion' => 'Descripcion',
            'estatus' => 'Estatus',
        ];
    }
}
