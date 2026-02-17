---
title: "지수"
date: "2020-06-19"
category: facebook
---

코로나 19 데이터에 적용 가능한 필터링 방법을 개발해서 논문을 한 편 썼다. 방역을 담당하는 입장에서는 전염병이 크게 번질지 예측하는 지표로 기초감염병 재생산지수(R0)를 예의주시하게 되는데, 여러 가지 사회적 방역 조치가 취해지면 이 지수를 시간에 따라 다르게 측정하는 게 도움이 된다. 한국이나 중국처럼 첫 번째 전파가 한풀 꺾였지만, 두 번째 전파를 우려하는 때도 그렇고. 하지만 코로나 19 데이터는 노이즈를 많이 포함하고 있어서 시시각각 변하는 이 지수를 추정하기가 쉽지 않다.

공저자들과 함께 개발한 방법은 (1) 여러 가지 변환을 통해 데이터에서 추세를 잡아내기 쉽게 만들었고, (2) kink point라고 해서 추세가 바뀌는 날짜들을 자동으로 잡아낸다. 예컨대, 아래 첫 번째 사진에서 한국의 경우 5월 5일 기점으로 log beta_t 지수가 급격하게 올라가는데, 이즈음 정부의 지침이 생활 방역으로 전환되었다. 다른 사진들은 공저자들의 현 거주국인 캐나다, 미국, 영국, 중국의 그래프. (3) 선형 결합의 형태를 가정해서 추정했기 때문에 기간별 R0(t)의 증가 속도를 쉽게 알려준다.

R code를 여기에 올려놓았으니(https://github.com/yshin12/sparseHP) 관련 연구를 전문적으로 하거나 정책을 마련하는 분들에게 조금이라도 도움이 되었으면 한다.

논문 링크는 여기(https://arxiv.org/abs/2006.10555).
Sparse HP Filter: Finding Kinks in the COVID-19 Contact Rate
Authors: Sokbae Lee, Yuan Liao, Myung Hwan Seo, Youngki Shin

![]({{ '/assets/facebook/20200619_1592540416_01.jpg' | relative_url }})

![]({{ '/assets/facebook/20200619_1592540416_02.jpg' | relative_url }})

![]({{ '/assets/facebook/20200619_1592540416_03.jpg' | relative_url }})

![]({{ '/assets/facebook/20200619_1592540416_04.jpg' | relative_url }})

![]({{ '/assets/facebook/20200619_1592540416_05.jpg' | relative_url }})

![]({{ '/assets/facebook/20200619_1592540416_06.jpg' | relative_url }})
