<?php

use App\Model\Brand;
use App\Model\Category;
use App\Model\Product;
use App\Model\Translation;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class ProductSampleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // 1. Create Categories
        $homeAppliances = Category::firstOrCreate(['name' => 'Home Appliances'], [
            'slug' => 'home-appliances',
            'parent_id' => 0,
            'position' => 1,
            'status' => 1,
        ]);

        $kitchenware = Category::firstOrCreate(['name' => 'Kitchenware'], [
            'slug' => 'kitchenware',
            'parent_id' => 0,
            'position' => 1,
            'status' => 1,
        ]);

        // 2. Create Brand
        $brand = Brand::firstOrCreate(['name' => 'Gabi Elite'], [
            'slug' => 'gabi-elite',
            'status' => 1,
            'image' => 'default.png',
        ]);

        // 3. Sample Products Data
        $products = [
            [
                'name' => 'Heavy-duty Stainless Steel Gas Cooker',
                'category_id' => $kitchenware->id,
                'description' => '“Heavy-duty stainless steel gas cooker designed for commercial kitchens, ensuring durability, high heat efficiency, and long-term performance.”',
                'price' => 250000,
                'unit' => 'pc',
            ],
            [
                'name' => 'Smart Energy-Efficient Refrigerator',
                'category_id' => $homeAppliances->id,
                'description' => '“Maintain freshness with our Smart Energy-Efficient Refrigerator. Featuring advanced inverter technology, spacious compartments, and whisper-quiet operation.”',
                'price' => 450000,
                'unit' => 'pc',
            ],
            [
                'name' => 'High-Performance Commercial Oven',
                'category_id' => $kitchenware->id,
                'description' => '“Master the art of baking with our High-Performance Commercial Oven. Precision temperature control and even heat distribution for professional results every time.”',
                'price' => 580000,
                'unit' => 'pc',
            ],
        ];

        foreach ($products as $pData) {
            $product = Product::firstOrNew(['name' => $pData['name']]);
            if (!$product->exists) {
                $product->added_by = 'admin';
                $product->user_id = 1; // Master Admin
                $product->brand_id = $brand->id;
                $product->category_id = $pData['category_id'];
                $product->category_ids = json_encode([['id' => (string)$pData['category_id'], 'position' => 1]]);
                $product->details = $pData['description'];
                $product->unit_price = $pData['price'];
                $product->purchase_price = $pData['price'] * 0.8;
                $product->tax = 0;
                $product->tax_type = 'percent';
                $product->tax_model = 'exclude';
                $product->discount = 0;
                $product->discount_type = 'flat';
                $product->unit = $pData['unit'];
                $product->current_stock = 1000;
                $product->minimum_order_qty = 500;
                $product->status = 1;
                $product->request_status = 1;
                $product->video_provider = 'youtube';
                $product->slug = Str::slug($pData['name'], '-') . '-' . Str::random(6);
                $product->thumbnail = 'default.png';
                $product->images = json_encode(['default.png']);
                $product->colors = json_encode([]);
                $product->choice_options = json_encode([]);
                $product->variation = json_encode([]);
                $product->attributes = json_encode([]);
                $product->product_type = 'physical';
                $product->save();

                // Add English Translation
                Translation::updateOrCreate(
                    [
                        'translationable_type' => 'App\Model\Product',
                        'translationable_id' => $product->id,
                        'locale' => 'en',
                        'key' => 'name'
                    ],
                    ['value' => $pData['name']]
                );

                Translation::updateOrCreate(
                    [
                        'translationable_type' => 'App\Model\Product',
                        'translationable_id' => $product->id,
                        'locale' => 'en',
                        'key' => 'description'
                    ],
                    ['value' => $pData['description']]
                );
            }
        }
    }
}
