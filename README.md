# <h1>The official implementation of Torque Clustering Algorithm</h1>

<h2>Autonomous clustering by fast find of mass and distance peaks</h2>

<h3>Usage and implementation</h3>

This project is for the reproduction of the results of the Torque Clustering algorithm based on Matlab2019b.

You need to put all the ".m" files into one folder.

Due to the space limits of Github, we put all the data sets on the [google drive:](https://drive.google.com/file/d/1ddvBAfxtR9wKKM7IAhNfD9HQ_kyhmceD/view?usp=sharing), the txt version of the data sets is also [available:](https://drive.google.com/file/d/1cPz7KvnLCPx-j6nWOl-juOMTtIWlmW3Y/view?usp=sharing).

**You may refer to the file containing "Run" in its name for a detailed guide on how to use Torque Clustering.**

The explanation of each "Run" file:

TorqueClustering_Run.m and TorqueClustering_Run_ImageClustering.m: The codes for the reproduction of the results in the main article.

TorqueClustering_Run_Supplementary.m: The codes for the reproduction of the results in the supplementary information.

If you want to use the fast version (TorqueClustering_kdtree) of Torque Clustering for large datasets (for which computing pairwise distance matrix won't fit in your memory), you need to install [flann library](https://github.com/flann-lib/flann) based on your environment.

<h3>**Citation**</h3>

If you find our codes useful, please cite our paper: **Jie Yang and Chin-Teng Lin, “Autonomous clustering by fast find of mass and distance peaks,” IEEE Transactions on Pattern Analysis and Machine Intelligence (TPAMI), DOI: 10.1109/TPAMI.2025.3535743** The pre-print version of this paper is [here](https://www.computer.org/csdl/journal/tp/5555/01/10856563/23Saifm0vLy)

**The code and Torque Clustering algorithm is not meant for commercial use. Please contact the author (jie.yang.uts@gmail.com) for licensing information.**





### 🚨 License & Forking Policy 🚨
This repository is licensed under **Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International (CC BY-NC-SA 4.0)**.

#### ❌ Prohibition of Commercial Use
- This software **MAY NOT** be used for any **commercial purposes**.
- Any form of **selling, paid services, SaaS deployment, or monetization** based on this repository is **strictly prohibited**.

#### 🔄 Forking Rules
- **You are allowed to fork** this repository, but **you MUST retain this exact license (CC BY-NC-SA 4.0)**.
- **Proper attribution to the original author is required** when using, modifying, or redistributing this repository.
- Any modifications, adaptations, or derivative works **must also be non-commercial and remain under CC BY-NC-SA 4.0**.

#### 🛑 Enforcement of License Violations
- **Violations of these terms may result in a DMCA takedown request filed on GitHub**.
- Any unauthorized **commercial usage or license violations** may lead to **legal actions**.

For further details, please refer to the official [Creative Commons License](https://creativecommons.org/licenses/by-nc-sa/4.0/).
