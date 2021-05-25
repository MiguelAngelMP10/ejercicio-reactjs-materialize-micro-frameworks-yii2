<?php

namespace micro\models;

use Yii;

/**
 * This is the model class for table "datos_generales".
 *
 * @property int $id
 * @property string $colorLetra
 * @property string $colorFondo
 * @property string $acercaDe
 * @property string $nosotros
 */
class DatosGenerales extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'datos_generales';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['colorLetra', 'colorFondo', 'acercaDe', 'nosotros'], 'required'],
            [['acercaDe', 'nosotros'], 'string'],
            [['colorLetra', 'colorFondo'], 'string', 'max' => 50],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'colorLetra' => 'Color Letra',
            'colorFondo' => 'Color Fondo',
            'acercaDe' => 'Acerca De',
            'nosotros' => 'Nosotros',
        ];
    }
}
