<?php

namespace micro\models;

use Yii;

/**
 * This is the model class for table "datos_generales".
 *
 * @property int $id
 * @property string $colorPrimario
 * @property string $colorSecundario
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
            [['colorPrimario', 'colorSecundario', 'acercaDe', 'nosotros'], 'required'],
            [['acercaDe', 'nosotros'], 'string'],
            [['colorPrimario', 'colorSecundario'], 'string', 'max' => 50],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'colorPrimario' => 'Color Letra',
            'colorSecundario' => 'Color Fondo',
            'acercaDe' => 'Acerca De',
            'nosotros' => 'Nosotros',
        ];
    }
}
