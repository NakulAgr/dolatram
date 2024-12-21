#!/bin/bash

# List of all file names
files=(
    "6photo.html"
    "Aarti_Thali.html"
    "Abil.html"
    "acacia_concinna.html"
    "Acchmani.html"
    "Adulasa.html"
    "Agarbatti.html"
    "Agarbatti_Stand.html"
    "ajmod.html"
    "ajwain.html"
    "akarkara.html"
    "Akhand_Jyot_Diya.html"
    "Alfalfa.html"
    "Allspice.html"
    "Almonds2.html"
    "AloeVera.html"
    "AloeVeraGel.html"
    "aloeweed.html"
    "alsi.html"
    "amba_haldi.html"
    "Amla.html"
    "Amla_Candy.html"
    "Anardana.html"
    "Angelica.html"
    "Aniseed.html"
    "anvla.html"
    "apamarg.html"
    "Apricots.html"
    "aritha.html"
    "Asafoetida.html"
    "Asafoetida_Hing.html"
    "Ashoka.html"
    "Ashwagandha_Choorn.html"
    "bacopa.html"
    "Bael.html"
    "bael_fruit.html"
    "baheda.html"
    "Bahera.html"
    "Bakuchi.html"
    "Bala.html"
    "Balmukund.html"
    "Bamboo.html"
    "Barley.html"
    "Basil.html"
    "Bayleaf.html"
    "bay_leaf.html"
    "Bay_Leaf_Tej_Patta.html"
    "Beetroot.html"
    "Beleric.html"
    "belgiri.html"
    "belleric_myrobalan.html"
    "Bhibhitaki.html"
    "Bhindi.html"
    "bhrungraj.html"
    "Big_Full_Supari.html"
    "bitter_cumin.html"
    "bitter_gourd.html"
    "Black_Cardamom.html"
    "Black_Cardamom_Black_Elaichi.html"
    "black_musli.html"
    "Black_Pepper.html"
    "Black_Peppercorns_Kali_Mirch.html"
    "black_sesame.html"
    "Black_Supari_Chikhni.html"
    "brahmi.html"
    "Brown_Mustard_Seeds_Rai.html"
    "Bryophyllum.html"
    "BuddhaPunjabi.html"
    "BuddhaShankar.html"
    "Burdock.html"
    "Buttermilk.html"
    "Capers_Kabra.html"
    "Caraway.html"
    "Caraway_Seeds_Sahjeera.html"
    "Cardamom.html"
    "carom_seeds.html"
    "Carom_Seeds_Ajwain.html"
    "Cashews.html"
    "Cassia.html"
    "Castor.html"
    "Catnip.html"
    "Cedar.html"
    "Celery.html"
    "celery_seed.html"
    "Chameli_Tel.html"
    "Chamomile.html"
    "Chandan.html"
    "ChandTara.html"
    "Charoli_Chironji.html"
    "chebulic_myrobalan.html"
    "Chestnuts.html"
    "Chickpeas.html"
    "china_root.html"
    "Chips_Supari.html"
    "chirata.html"
    "Chitrak.html"
    "chitrak_mool.html"
    "chopchini.html"
    "Cinnamon.html"
    "Cinnamon_Dalchini.html"
    "citrullus_colocynthis.html"
    "Clove.html"
    "Cloves.html"
    "Cloves_Lavang.html"
    "Coconut_without_Water.html"
    "Coconut_with_Water.html"
    "copy_html_files.sh"
    "Coriander.html"
    "Corn.html"
    "Costus.html"
    "Cotton.html"
    "Cress.html"
    "Cumin.html"
    "Cumin_Seeds_Jeera.html"
    "Curry_Leaf_Curry_Patta.html"
    "Dandelion.html"
    "Dates.html"
    "Date_Palm.html"
    "Datura.html"
    "Dhoop_Batt.html"
    "Dill.html"
    "Dried_Fruits.html"
    "Dried_Ginger_Sonth.html"
    "Dried_Mango.html"
    "drumstick_tree.html"
    "Dry_Fenugreek_Kasturi_Methi.html"
    "Dry_Figs.html"
    "dry_ginger.html"
    "Elaichi.html"
    "enicostemma.html"
    "Ephedra.html"
    "Eucalyptus.html"
    "false_black_pepper.html"
    "false_daisy.html"
    "Fennel.html"
    "Fennel_Seeds_Saunf.html"
    "Fenugreek.html"
    "fenugreek_seeds.html"
    "Figs.html"
    "Flaxseed.html"
    "flax_seeds.html"
    "Galangal.html"
    "galo_satva.html"
    "ganthoda.html"
    "Garcinia_Indica_Kokam.html"
    "Ghanti.html"
    "Ghee.html"
    "Ghoda.html"
    "ghodavaj.html"
    "Ghuteli.html"
    "giloy.html"
    "giloy_starch.html"
    "Ginger.html"
    "Ginkgo_Biloba.html"
    "gokhru.html"
    "Gooseberries.html"
    "Gotu_Kola.html"
    "Grapes.html"
    "Green_Cardamom_Hari_Elaichi.html"
    "Green_Tea.html"
    "Guava.html"
    "gudmar_patti.html"
    "Guggul.html"
    "GulabChaap.html"
    "gulab_patti.html"
    "Gulal.html"
    "gymnema_leaves.html"
    "Haldi.html"
    "Half_Roasted_Supari.html"
    "Half_Supari.html"
    "harad.html"
    "Haritaki.html"
    "Havan_Aam_Ki_Lakdi.html"
    "Havan_Kund.html"
    "Havan_Samagri.html"
    "Havan_Samidha_Lakdi.html"
    "heart_leaved_moonseed.html"
    "Hibiscus.html"
    "hibiscus_flower.html"
    "himaj.html"
    "hirabol.html"
    "holarrhena.html"
    "Holy_Basil.html"
    "Honey.html"
    "Hops.html"
    "Hyssop.html"
    "index12.html"
    "indian_blackberry.html"
    "indian_gooseberry.html"
    "indian_kudzu.html"
    "indian_lotus_stamen.html"
    "indian_madder.html"
    "indian_senna.html"
    "indian_trumpet_flower.html"
    "Indigo.html"
    "indrajav.html"
    "iron_ash.html"
    "isabgol.html"
    "Itra_Perfumes.html"
    "Jaggery.html"
    "jamun.html"
    "Jasmine.html"
    "jasud_phool.html"
    "jatamasi.html"
    "javkhar.html"
    "jayfal.html"
    "Jeera.html"
    "jeshtimadh.html"
    "Jethimadh.html"
    "Jojoba.html"
    "Juniper.html"
    "Jute.html"
    "kachka.html"
    "kala_til.html"
    "kali_jeeri.html"
    "kali_musli.html"
    "Kalmegh.html"
    "kalonji.html"
    "Kanku.html"
    "Kapoor.html"
    "Karaya.html"
    "karela.html"
    "Karpoor.html"
    "karyatu.html"
    "Kattha.html"
    "kaucha.html"
    "Kavach.html"
    "Kharek.html"
    "Kokum.html"
    "Kumari.html"
    "Kutki.html"
    "Laddu.html"
    "leadwort_root.html"
    "Lemon.html"
    "Lemon_Balm.html"
    "Licorice.html"
    "licorice_root.html"
    "lindi_pipar.html"
    "Linseed.html"
    "lodhar.html"
    "loh_bhasma.html"
    "long_pepper.html"
    "long_pepper_root.html"
    "Lotus.html"
    "Lycopodium.html"
    "Macadamia.html"
    "Mace_Javantri.html"
    "Madrasnk.html"
    "Mahua.html"
    "malkangni.html"
    "mamejvo.html"
    "Mandukaparni.html"
    "mango_ginger.html"
    "Mango_Powder_Amchoor.html"
    "manjistha.html"
    "Marigold.html"
    "marking_nut.html"
    "mayufal.html"
    "Methi.html"
    "methi_dana.html"
    "mindhal.html"
    "mineral_pitch.html"
    "Mint.html"
    "Moong.html"
    "moringa.html"
    "mugwort.html"
    "Mulberry.html"
    "Mulethi.html"
    "Mulethi_Powder.html"
    "Mulhatti.html"
    "Munakka.html"
    "MusaGul.html"
    "Muskmelon.html"
    "Mustard.html"
    "Myrobalan.html"
    "myrrh.html"
    "Naag_Kesar.html"
    "Nadachadi_Kalava.html"
    "nagarmotha.html"
    "Nandkumar.html"
    "nasottar.html"
    "neel.html"
    "neem.html"
    "nigella_seeds.html"
    "Nigella_Seed_Kalonji.html"
    "Nilgiri.html"
    "niranjan_phal.html"
    "nutgrass.html"
    "nutmeg.html"
    "Nutmeg_Jayfal.html"
    "Nylon.html"
    "Oats.html"
    "Olives.html"
    "Onion.html"
    "Orange.html"
    "Pakka_Tel.html"
    "paneer_phool.html"
    "Papaya.html"
    "Parsley.html"
    "Patchouli.html"
    "Peanuts.html"
    "pellitory_root.html"
    "Peppermint.html"
    "Pine.html"
    "Pineapple.html"
    "Pine_Nuts.html"
    "Pistachio.html"
    "Pistachios.html"
    "Plum.html"
    "Polyester.html"
    "Pomegranate.html"
    "Pooja_Kit.html"
    "Poppy.html"
    "Poppy_Seeds_Khas_Khas.html"
    "potassium_carbonate.html"
    "potassium_nitrate.html"
    "prickly_chaff_flower.html"
    "prickly_chaff_flower2.html"
    "Prunes.html"
    "psyllium_husk.html"
    "Pudina.html"
    "Pumpkin.html"
    "Pumpkin_Seeds.html"
    "puncture_vine.html"
    "Raisin.html"
    "Raisins.html"
    "Raspberry.html"
    "Ratanjot.html"
    "Red_Chili.html"
    "Red_Chilli_Pepper_Laali_Mirch.html"
    "Reetha.html"
    "Rhubarb.html"
    "Rice.html"
    "Roasted_Chips_Supari.html"
    "Roasted_Tukda_Supari.html"
    "rohida_tree_gum.html"
    "Rose.html"
    "Rosemary.html"
    "rose_petals.html"
    "safed_musli.html"
    "safed_til.html"
    "Saffron.html"
    "Saffron_Kesar.html"
    "Sage.html"
    "Sandalwood.html"
    "Sapodilla.html"
    "Saraswati_Choorn.html"
    "Sarsaparilla.html"
    "Sarso_Tel.html"
    "senna_leaves.html"
    "Sesame_Seeds_Til.html"
    "Sesame_Til.html"
    "Shatavari.html"
    "Shilajit.html"
    "Shisham.html"
    "Shrubs.html"
    "Shunthi.html"
    "Sikkim_Ginger.html"
    "Simarouba.html"
    "Sona_Mukhi.html"
    "Soursop.html"
    "Spearmint.html"
    "Spinach.html"
    "Starfruit.html"
    "Stevia.html"
    "Strychnine.html"
    "Sumac.html"
    "Sweet_Basil.html"
    "Sweet_Potato.html"
    "tamarind.html"
    "Tamarind_Sugary.html"
    "Tamala.html"
    "Tamarind_leaves.html"
    "Tamala_Mishri.html"
    "Tannic_Acid.html"
    "Tea.html"
    "Thyme.html"
    "turmeric_powder.html"
    "Turmeric_Rhizome.html"
    "Turmeric_Turmeric_Whole.html"
    "Tulsi.html"
    "Urad_Dal.html"
    "Urginea.html"
    "Uva_Ursi.html"
    "Valerian.html"
    "Vanilla.html"
    "Varnala.html"
    "Vetiver.html"
    "Vidarikand.html"
    "Watermelon.html"
    "Wild_Thyme.html"
    "Willow_Bark.html"
    "Wintergreen.html"
    "Wood_Apple.html"
    "Wormwood.html"
    "Yarrow.html"
    "Yellow_Ginger.html"
    "Yellow_Mustard.html"
    "Ylang_Ylang.html"
    "Zedoary.html"
    "Zingiber.html"
)

# Create HTML files for each item in the list
for file in "${files[@]}"; do
    touch "$file"
    echo "<!-- Created for $file -->" > "$file"
done