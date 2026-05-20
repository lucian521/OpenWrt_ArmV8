--- a/target/linux/mediatek/dts/mt7986a-netcore-n60-pro.dts
+++ b/target/linux/mediatek/dts/mt7986a-netcore-n60-pro.dts
@@ -242,6 +242,10 @@
 		spi-tx-bus-width = <4>;
 		spi-rx-bus-width = <4>;
 
+		mediatek,nmbm;
+		mediatek,bmt-max-ratio = <1>;
+		mediatek,bmt-max-reserved-blocks = <64>;
+
 		partitions {
 			compatible = "fixed-partitions";
 			#address-cells = <1>;
@@ -290,7 +294,7 @@
 
 			partition@580000 {
 				label = "ubi";
-				reg = <0x0580000 0x7a80000>;
+				reg = <0x0580000 0x7280000>;
 				compatible = "linux,ubi";
 
 				volumes {

--- a/target/linux/mediatek/dts/mt7981b-comfast-cf-wr632ax.dts
+++ b/target/linux/mediatek/dts/mt7981b-comfast-cf-wr632ax.dts
@@ -14,5 +14,5 @@
 };
 
 &ubi {
-	reg = <0x580000 0x4000000>;
+	reg = <0x580000 0x07200000>;
 };
