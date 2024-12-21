#!/bin/bash

# List of HTML files
files=(
  "Adulasa.html" "Ajwain.html" "Akarkara.html" "Alfalfa.html" "Allspice.html" "AloeVera.html"
  "AloeVeraGel.html" "Amla.html" "Amla_Candy.html" "Anardana.html" "Angelica.html" "Aniseed.html"
  "Aritha.html" "Asafoetida.html" "Ashoka.html" "Ashwagandha_Choorn.html" "Bael.html" "Bahera.html"
  "Bakuchi.html" "Bala.html" "Bamboo.html" "Barley.html" "Basil.html" "Bayleaf.html" "Beetroot.html"
  "Beleric.html" "Bhibhitaki.html" "Bhindi.html" "Black_Cardamom.html" "Black_Pepper.html" "Black_Sesame.html"
  "Brahmi.html" "Bryophyllum.html" "Burdock.html" "Buttermilk.html" "Caraway.html" "Cardamom.html" "Cassia.html"
  "Castor.html" "Catnip.html" "Cedar.html" "Celery.html" "Chamomile.html" "Chandan.html" "Chickpeas.html"
  "Chirata.html" "Chitrak.html" "Cinnamon.html" "Clove.html" "Cloves.html" "Coriander.html" "Corn.html"
  "Costus.html" "Cress.html" "Cumin.html" "Dandelion.html" "Date_Palm.html" "Datura.html" "Dill.html"
  "Dried_Fruits.html" "Dry_Figs.html" "Elaichi.html" "Ephedra.html" "Eucalyptus.html" "Fenugreek.html"
  "Fennel.html" "Flaxseed.html" "Galangal.html" "Ginger.html" "Ginkgo_Biloba.html" "Giloy.html" "Gokhru.html"
  "Gotu_Kola.html" "Grapes.html" "Green_Tea.html" "Guava.html" "Guggul.html" "Haldi.html" "Haritaki.html"
  "Hibiscus.html" "Holy_Basil.html" "Hops.html" "Hyssop.html" "Indigo.html" "Jaggery.html" "Jamun.html"
  "Jasmine.html" "Jeera.html" "Jethimadh.html" "Jojoba.html" "Juniper.html" "Kalmegh.html" "Kalonji.html"
  "Kapoor.html" "Karaya.html" "Karpoor.html" "Kattha.html" "Kavach.html" "Kharek.html" "Kokum.html"
  "Kumari.html" "Kutki.html" "Laddu.html" "Lemon.html" "Lemon_Balm.html" "Licorice.html" "Linseed.html"
  "Long_Pepper.html" "Lotus.html" "Lycopodium.html" "Macadamia.html" "Mahua.html" "Mandukaparni.html"
  "Manjistha.html" "Marigold.html" "Methi.html" "Mint.html" "Moong.html" "Moringa.html" "Mulberry.html"
  "Mulhatti.html" "Mulethi.html" "Mulethi_Powder.html" "Munakka.html" "Muskmelon.html" "Mustard.html"
  "Myrobalan.html" "Neem.html" "Nutmeg.html" "Oats.html" "Olives.html" "Onion.html" "Orange.html"
  "Papaya.html" "Parsley.html" "Patchouli.html" "Peanuts.html" "Peppermint.html" "Pine.html" "Pineapple.html"
  "Pistachio.html" "Plum.html" "Pomegranate.html" "Poppy.html" "Pudina.html" "Pumpkin.html" "Pumpkin_Seeds.html"
  "Raisin.html" "Raspberry.html" "Red_Chili.html" "Reetha.html" "Rhubarb.html" "Rice.html" "Rose.html"
  "Rosemary.html" "Saffron.html" "Sage.html" "Sandalwood.html" "Sapodilla.html" "Saraswati_Choorn.html"
  "Sarsaparilla.html" "Sesame_Til.html" "Shatavari.html" "shikakai.html" "small_cardamom.html"
  "Small_Supari_Karwa.html" "soda_bicarb.html" "soft_nuts.html" "sojat.html" "souna.html" "Soyabean_Seeds.html"
  "Star_Anise.html" "Sunflower_Seeds.html" "Sweet_Supari.html" "tamarind.html" "tamarind2.html" "Tamarind_Imli.html"
  "Tea_Leaves_Chai_Patti.html" "Tej_Patta.html" "Toor_Dal.html" "Tribulus_Terrestris.html" "Trifala.html"
  "Triphala.html" "Triphala_Choorn.html" "turmeric.html" "Turmeric_Haldi.html" "Turmeric_Stick.html"
  "Urad_Dal.html" "Ushira.html" "Vaidhnath.html" "Valerian_Root.html" "variyali.html" "Vasan.html"
  "Vavding.html" "Velchi.html" "Vekhand.html" "vetiver.html" "vidang.html" "walnuts.html" "Watermelon_Seeds.html"
  "White_Cardamom.html" "White_Musli.html" "White_Supari_Supari_Kora.html" "Wheat.html" "Yash_Tel.html"
  "yellow_musli.html" "Zafran.html" "zandu.html" "zunkhadi.html"
)

# Path to the source file
source_file="index12.html"

# Loop through all the files and copy content from index12.html into each one
for file in "${files[@]}"; do
  if [ -f "$file" ]; then
    cat "$source_file" > "$file"
    echo "Copied index12.html content into $file"
  else
    echo "$file not found!"
  fi
done
