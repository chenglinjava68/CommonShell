#! /bin/sh

#item_id#path#limit#alert#note
#��ĿID#·��#��ֵ#�澯����#��ע
config="
1#${BOSS_DATA7}/rate/output/it100#700#�ļ���������������#�������Ŀ¼\n
2#${BOSS_DATA7}/rate/output/it200#700#�ļ���������������#�������Ŀ¼\n
3#${BOSS_DATA7}/rate/output/it300#700#�ļ���������������#�������Ŀ¼\n
5#${BOSS_DATA7}/smsremind/it100#700#�ļ���������������#������������Ŀ¼\n
6#${BOSS_DATA7}/smsremind/it200#700#�ļ���������������#������������Ŀ¼\n
7#${BOSS_DATA7}/smsremind/it300#700#�ļ���������������#������������Ŀ¼\n
9#${BOSS_DATA7}/rr/it100#700#�ļ���������������#��������Ŀ¼\n
10#${BOSS_DATA7}/rr/it200#700#�ļ���������������#��������Ŀ¼\n
11#${BOSS_DATA7}/rr/it300#700#�ļ���������������#��������Ŀ¼\n
13#${BOSS_DATA7}/filter1_yw/prov/gsm/it100#700#�ļ���������������#������������Ŀ¼\n
14#${BOSS_DATA7}/filter1_yw/prov/gsm/it200#700#�ļ���������������#������������Ŀ¼\n
15#${BOSS_DATA7}/filter1_yw/prov/gsm/it300#700#�ļ���������������#������������Ŀ¼\n
17#${BOSS_DATA7}/filter1_yw/prov/gprs/it100#700#�ļ���������������#������������Ŀ¼\n
18#${BOSS_DATA7}/filter1_yw/prov/gprs/it200#700#�ļ���������������#������������Ŀ¼\n
19#${BOSS_DATA7}/filter1_yw/prov/gprs/it300#700#�ļ���������������#������������Ŀ¼\n
21#${BOSS_DATA7}/filter1_yw/prov/sms/it100#700#�ļ���������������#���ֶ�������Ŀ¼\n
22#${BOSS_DATA7}/filter1_yw/prov/sms/it200#700#�ļ���������������#���ֶ�������Ŀ¼\n
23#${BOSS_DATA7}/filter1_yw/prov/sms/it300#700#�ļ���������������#���ֶ�������Ŀ¼\n
25#${BOSS_DATA7}/filter1_yw/prov/vac/it100#700#�ļ���������������#������ֵ����Ŀ¼\n
26#${BOSS_DATA7}/filter1_yw/prov/vac/it200#700#�ļ���������������#������ֵ����Ŀ¼\n
27#${BOSS_DATA7}/filter1_yw/prov/vac/it300#700#�ļ���������������#������ֵ����Ŀ¼\n
29#${BOSS_DATA7}/filter1_yw/prov/llk/it100#700#�ļ���������������#��������һ��������Ŀ¼\n
30#${BOSS_DATA7}/filter1_yw/prov/llk/it200#700#�ļ���������������#��������һ��������Ŀ¼\n
31#${BOSS_DATA7}/filter1_yw/prov/llk/it300#700#�ļ���������������#��������һ��������Ŀ¼\n
33#${BOSS_DATA7}/filter1/err/it100#700#�ļ���������������#һ�ִ�������Ŀ¼\n
34#${BOSS_DATA7}/filter1/err/it200#700#�ļ���������������#һ�ִ�������Ŀ¼\n
35#${BOSS_DATA7}/filter1/err/it300#700#�ļ���������������#һ�ִ�������Ŀ¼\n
37#${BOSS_DATA7}/filter2/err/it100#700#�ļ���������������#���ִ�������Ŀ¼\n
38#${BOSS_DATA7}/filter2/err/it200#700#�ļ���������������#���ִ�������Ŀ¼\n
39#${BOSS_DATA7}/filter2/err/it300#700#�ļ���������������#���ִ�������Ŀ¼\n
41#${BOSS_DATA7}/filter2/noinfo/it100#700#�ļ���������������#������������Ŀ¼\n
42#${BOSS_DATA7}/filter2/noinfo/it200#700#�ļ���������������#������������Ŀ¼\n
43#${BOSS_DATA7}/filter2/noinfo/it300#700#�ļ���������������#������������Ŀ¼\n
44#${BOSS_DATA7}/filter2/noinfo/it400#700#�ļ���������������#������������Ŀ¼\n
45#${BOSS_DATA7}/filter2/err/it100#700#�ļ���������������#���ִ�������Ŀ¼\n
46#${BOSS_DATA7}/filter2/err/it200#700#�ļ���������������#���ִ�������Ŀ¼\n
47#${BOSS_DATA7}/filter2/err/it300#700#�ļ���������������#���ִ�������Ŀ¼\n
48#${BOSS_DATA7}/filter2/err/it400#700#�ļ���������������#���ִ�������Ŀ¼\n
49#${BOSS_DATA7}/rate/err/it100#700#�ļ���������������#���۴�������Ŀ¼\n
50#${BOSS_DATA7}/rate/err/it200#700#�ļ���������������#���۴�������Ŀ¼\n
51#${BOSS_DATA7}/rate/err/it300#700#�ļ���������������#���۴�������Ŀ¼\n
53#${BOSS_DATA7}/pp_yw/std/gsm/it100#700#�ļ���������������#һ����������Ŀ¼\n
54#${BOSS_DATA7}/pp_yw/std/gsm/it200#700#�ļ���������������#һ����������Ŀ¼\n
55#${BOSS_DATA7}/pp_yw/std/gsm/it300#700#�ļ���������������#һ����������Ŀ¼\n
57#${BOSS_DATA7}/pp_yw/std/gprs/it100#700#�ļ���������������#һ����������Ŀ¼\n
58#${BOSS_DATA7}/pp_yw/std/gprs/it200#700#�ļ���������������#һ����������Ŀ¼\n
59#${BOSS_DATA7}/pp_yw/std/gprs/it300#700#�ļ���������������#һ����������Ŀ¼\n
61#${BOSS_DATA7}/pp_yw/std/sms/it100#700#�ļ���������������#һ�ֶ�������Ŀ¼\n
62#${BOSS_DATA7}/pp_yw/std/sms/it200#700#�ļ���������������#һ�ֶ�������Ŀ¼\n
63#${BOSS_DATA7}/pp_yw/std/sms/it300#700#�ļ���������������#һ�ֶ�������Ŀ¼\n
65#${BOSS_DATA7}/pp_yw/std/vac/it100#700#�ļ���������������#һ����ֵ����Ŀ¼\n
66#${BOSS_DATA7}/pp_yw/std/vac/it200#700#�ļ���������������#һ����ֵ����Ŀ¼\n
67#${BOSS_DATA7}/pp_yw/std/vac/it300#700#�ļ���������������#һ����ֵ����Ŀ¼\n
69#${BOSS_DATA7}/pp_yw/src/it100/gprs#700#�ļ���������������#Ԥ������������Ŀ¼\n
70#${BOSS_DATA7}/pp_yw/src/it100/gsm#700#�ļ���������������#Ԥ������������Ŀ¼\n
71#${BOSS_DATA7}/pp_yw/src/it100/vac#700#�ļ���������������#Ԥ������������Ŀ¼\n
72#${BOSS_DATA7}/pp_yw/src/it100/sms/hysm#700#�ļ���������������#Ԥ������������Ŀ¼\n
73#${BOSS_DATA7}/pp_yw/src/it100/sms/insm#700#�ļ���������������#Ԥ������������Ŀ¼\n
74#${BOSS_DATA7}/pp_yw/src/it100/sms/ptp#700#�ļ���������������#Ԥ������������Ŀ¼\n
75#${BOSS_DATA7}/pp_yw/src/it100/sms/unol#700#�ļ���������������#Ԥ������������Ŀ¼\n
76#${BOSS_DATA7}/pp_yw/src/it200/gprs#700#�ļ���������������#Ԥ������������Ŀ¼\n
77#${BOSS_DATA7}/pp_yw/src/it200/gsm#700#�ļ���������������#Ԥ������������Ŀ¼\n
78#${BOSS_DATA7}/pp_yw/src/it200/vac#700#�ļ���������������#Ԥ������������Ŀ¼\n
79#${BOSS_DATA7}/pp_yw/src/it200/sms/hysm#700#�ļ���������������#Ԥ������������Ŀ¼\n
80#${BOSS_DATA7}/pp_yw/src/it200/sms/insm#700#�ļ���������������#Ԥ������������Ŀ¼\n
81#${BOSS_DATA7}/pp_yw/src/it200/sms/ptp#700#�ļ���������������#Ԥ������������Ŀ¼\n
82#${BOSS_DATA7}/pp_yw/src/it200/sms/unol#700#�ļ���������������#Ԥ������������Ŀ¼\n
83#${BOSS_DATA7}/pp_yw/src/it300/gprs#700#�ļ���������������#Ԥ������������Ŀ¼\n
84#${BOSS_DATA7}/pp_yw/src/it300/gsm#700#�ļ���������������#Ԥ������������Ŀ¼\n
85#${BOSS_DATA7}/pp_yw/src/it300/vac#700#�ļ���������������#Ԥ������������Ŀ¼\n
86#${BOSS_DATA7}/pp_yw/src/it300/sms/hysm#700#�ļ���������������#Ԥ������������Ŀ¼\n
87#${BOSS_DATA7}/pp_yw/src/it300/sms/insm#700#�ļ���������������#Ԥ������������Ŀ¼\n
88#${BOSS_DATA7}/pp_yw/src/it300/sms/ptp#700#�ļ���������������#Ԥ������������Ŀ¼\n
89#${BOSS_DATA7}/pp_yw/src/it300/sms/unol#700#�ļ���������������#Ԥ������������Ŀ¼\n
90#${BOSS_DATA7}/pp_yw/src/it01/gsm/00#700#�ļ���������������#ftrans����·��\n
91#${BOSS_DATA7}/pp_yw/src/it01/gsm/01#700#�ļ���������������#ftrans����·��\n
92#${BOSS_DATA7}/pp_yw/src/it01/gsm/02#700#�ļ���������������#ftrans����·��\n
93#${BOSS_DATA7}/pp_yw/src/it01/gsm/03#700#�ļ���������������#ftrans����·��\n
94#${BOSS_DATA7}/pp_yw/src/it01/gsm/04#700#�ļ���������������#ftrans����·��\n
95#${BOSS_DATA7}/pp_yw/src/it01/gsm/05#700#�ļ���������������#ftrans����·��\n
96#${BOSS_DATA7}/pp_yw/src/it01/gsm/06#700#�ļ���������������#ftrans����·��\n
97#${BOSS_DATA7}/pp_yw/src/it01/gsm/07#700#�ļ���������������#ftrans����·��\n
98#${BOSS_DATA7}/pp_yw/src/it01/gsm/08#700#�ļ���������������#ftrans����·��\n
99#${BOSS_DATA7}/pp_yw/src/it01/gsm/09#700#�ļ���������������#ftrans����·��\n
100#${BOSS_DATA7}/pp_yw/src/it01/gsm/10#700#�ļ���������������#ftrans����·��\n
101#${BOSS_DATA7}/pp_yw/src/it01/gsm/11#700#�ļ���������������#ftrans����·��\n
102#${BOSS_DATA7}/pp_yw/src/it01/gsm/12#700#�ļ���������������#ftrans����·��\n
103#${BOSS_DATA7}/pp_yw/src/it01/gsm/13#700#�ļ���������������#ftrans����·��\n
104#${BOSS_DATA7}/pp_yw/src/it01/gsm/14#700#�ļ���������������#ftrans����·��\n
105#${BOSS_DATA7}/pp_yw/src/it01/gsm/15#700#�ļ���������������#ftrans����·��\n
106#${BOSS_DATA7}/pp_yw/src/it01/gsm/16#700#�ļ���������������#ftrans����·��\n
107#${BOSS_DATA7}/pp_yw/src/it01/gsm/17#700#�ļ���������������#ftrans����·��\n
108#${BOSS_DATA7}/pp_yw/src/it01/gsm/18#700#�ļ���������������#ftrans����·��\n
109#${BOSS_DATA7}/pp_yw/src/it01/gsm/19#700#�ļ���������������#ftrans����·��\n
110#${BOSS_DATA7}/pp_yw/src/it01/gsm/20#700#�ļ���������������#ftrans����·��\n
111#${BOSS_DATA7}/pp_yw/src/it01/gsm/21#700#�ļ���������������#ftrans����·��\n
112#${BOSS_DATA7}/pp_yw/src/it01/gsm/22#700#�ļ���������������#ftrans����·��\n
113#${BOSS_DATA7}/pp_yw/src/it01/gsm/23#700#�ļ���������������#ftrans����·��\n
114#${BOSS_DATA7}/pp_yw/src/it02/gsm/00#700#�ļ���������������#ftrans����·��\n
115#${BOSS_DATA7}/pp_yw/src/it02/gsm/01#700#�ļ���������������#ftrans����·��\n
116#${BOSS_DATA7}/pp_yw/src/it02/gsm/02#700#�ļ���������������#ftrans����·��\n
117#${BOSS_DATA7}/pp_yw/src/it02/gsm/03#700#�ļ���������������#ftrans����·��\n
118#${BOSS_DATA7}/pp_yw/src/it02/gsm/04#700#�ļ���������������#ftrans����·��\n
119#${BOSS_DATA7}/pp_yw/src/it02/gsm/05#700#�ļ���������������#ftrans����·��\n
120#${BOSS_DATA7}/pp_yw/src/it02/gsm/06#700#�ļ���������������#ftrans����·��\n
121#${BOSS_DATA7}/pp_yw/src/it02/gsm/07#700#�ļ���������������#ftrans����·��\n
122#${BOSS_DATA7}/pp_yw/src/it02/gsm/08#700#�ļ���������������#ftrans����·��\n
123#${BOSS_DATA7}/pp_yw/src/it02/gsm/09#700#�ļ���������������#ftrans����·��\n
124#${BOSS_DATA7}/pp_yw/src/it02/gsm/10#700#�ļ���������������#ftrans����·��\n
125#${BOSS_DATA7}/pp_yw/src/it02/gsm/11#700#�ļ���������������#ftrans����·��\n
126#${BOSS_DATA7}/pp_yw/src/it02/gsm/12#700#�ļ���������������#ftrans����·��\n
127#${BOSS_DATA7}/pp_yw/src/it02/gsm/13#700#�ļ���������������#ftrans����·��\n
128#${BOSS_DATA7}/pp_yw/src/it02/gsm/14#700#�ļ���������������#ftrans����·��\n
129#${BOSS_DATA7}/pp_yw/src/it02/gsm/15#700#�ļ���������������#ftrans����·��\n
130#${BOSS_DATA7}/pp_yw/src/it02/gsm/16#700#�ļ���������������#ftrans����·��\n
131#${BOSS_DATA7}/pp_yw/src/it02/gsm/17#700#�ļ���������������#ftrans����·��\n
132#${BOSS_DATA7}/pp_yw/src/it02/gsm/18#700#�ļ���������������#ftrans����·��\n
133#${BOSS_DATA7}/pp_yw/src/it02/gsm/19#700#�ļ���������������#ftrans����·��\n
134#${BOSS_DATA7}/pp_yw/src/it02/gsm/20#700#�ļ���������������#ftrans����·��\n
135#${BOSS_DATA7}/pp_yw/src/it02/gsm/21#700#�ļ���������������#ftrans����·��\n
136#${BOSS_DATA7}/pp_yw/src/it02/gsm/22#700#�ļ���������������#ftrans����·��\n
137#${BOSS_DATA7}/pp_yw/src/it02/gsm/23#700#�ļ���������������#ftrans����·��\n
138#${BOSS_DATA7}/pp_yw/src/it03/gsm/00#700#�ļ���������������#ftrans����·��\n
139#${BOSS_DATA7}/pp_yw/src/it03/gsm/01#700#�ļ���������������#ftrans����·��\n
140#${BOSS_DATA7}/pp_yw/src/it03/gsm/02#700#�ļ���������������#ftrans����·��\n
141#${BOSS_DATA7}/pp_yw/src/it03/gsm/03#700#�ļ���������������#ftrans����·��\n
142#${BOSS_DATA7}/pp_yw/src/it03/gsm/04#700#�ļ���������������#ftrans����·��\n
143#${BOSS_DATA7}/pp_yw/src/it03/gsm/05#700#�ļ���������������#ftrans����·��\n
144#${BOSS_DATA7}/pp_yw/src/it03/gsm/06#700#�ļ���������������#ftrans����·��\n
145#${BOSS_DATA7}/pp_yw/src/it03/gsm/07#700#�ļ���������������#ftrans����·��\n
146#${BOSS_DATA7}/pp_yw/src/it03/gsm/08#700#�ļ���������������#ftrans����·��\n
147#${BOSS_DATA7}/pp_yw/src/it03/gsm/09#700#�ļ���������������#ftrans����·��\n
148#${BOSS_DATA7}/pp_yw/src/it03/gsm/10#700#�ļ���������������#ftrans����·��\n
149#${BOSS_DATA7}/pp_yw/src/it03/gsm/11#700#�ļ���������������#ftrans����·��\n
150#${BOSS_DATA7}/pp_yw/src/it03/gsm/12#700#�ļ���������������#ftrans����·��\n
151#${BOSS_DATA7}/pp_yw/src/it03/gsm/13#700#�ļ���������������#ftrans����·��\n
152#${BOSS_DATA7}/pp_yw/src/it03/gsm/14#700#�ļ���������������#ftrans����·��\n
153#${BOSS_DATA7}/pp_yw/src/it03/gsm/15#700#�ļ���������������#ftrans����·��\n
154#${BOSS_DATA7}/pp_yw/src/it03/gsm/16#700#�ļ���������������#ftrans����·��\n
155#${BOSS_DATA7}/pp_yw/src/it03/gsm/17#700#�ļ���������������#ftrans����·��\n
156#${BOSS_DATA7}/pp_yw/src/it03/gsm/18#700#�ļ���������������#ftrans����·��\n
157#${BOSS_DATA7}/pp_yw/src/it03/gsm/19#700#�ļ���������������#ftrans����·��\n
158#${BOSS_DATA7}/pp_yw/src/it03/gsm/20#700#�ļ���������������#ftrans����·��\n
159#${BOSS_DATA7}/pp_yw/src/it03/gsm/21#700#�ļ���������������#ftrans����·��\n
160#${BOSS_DATA7}/pp_yw/src/it03/gsm/22#700#�ļ���������������#ftrans����·��\n
161#${BOSS_DATA7}/pp_yw/src/it03/gsm/23#700#�ļ���������������#ftrans����·��\n
162#${BOSS_DATA7}/pp_yw/src/it01/gprs/00#700#�ļ���������������#ftrans����·��\n
163#${BOSS_DATA7}/pp_yw/src/it01/gprs/01#700#�ļ���������������#ftrans����·��\n
164#${BOSS_DATA7}/pp_yw/src/it01/gprs/02#700#�ļ���������������#ftrans����·��\n
165#${BOSS_DATA7}/pp_yw/src/it01/gprs/03#700#�ļ���������������#ftrans����·��\n
166#${BOSS_DATA7}/pp_yw/src/it01/gprs/04#700#�ļ���������������#ftrans����·��\n
167#${BOSS_DATA7}/pp_yw/src/it01/gprs/05#700#�ļ���������������#ftrans����·��\n
168#${BOSS_DATA7}/pp_yw/src/it01/gprs/06#700#�ļ���������������#ftrans����·��\n
169#${BOSS_DATA7}/pp_yw/src/it01/gprs/07#700#�ļ���������������#ftrans����·��\n
170#${BOSS_DATA7}/pp_yw/src/it01/gprs/08#700#�ļ���������������#ftrans����·��\n
171#${BOSS_DATA7}/pp_yw/src/it01/gprs/09#700#�ļ���������������#ftrans����·��\n
172#${BOSS_DATA7}/pp_yw/src/it01/gprs/10#700#�ļ���������������#ftrans����·��\n
173#${BOSS_DATA7}/pp_yw/src/it01/gprs/11#700#�ļ���������������#ftrans����·��\n
174#${BOSS_DATA7}/pp_yw/src/it01/gprs/12#700#�ļ���������������#ftrans����·��\n
175#${BOSS_DATA7}/pp_yw/src/it01/gprs/13#700#�ļ���������������#ftrans����·��\n
176#${BOSS_DATA7}/pp_yw/src/it01/gprs/14#700#�ļ���������������#ftrans����·��\n
177#${BOSS_DATA7}/pp_yw/src/it01/gprs/15#700#�ļ���������������#ftrans����·��\n
178#${BOSS_DATA7}/pp_yw/src/it01/gprs/16#700#�ļ���������������#ftrans����·��\n
179#${BOSS_DATA7}/pp_yw/src/it01/gprs/17#700#�ļ���������������#ftrans����·��\n
180#${BOSS_DATA7}/pp_yw/src/it01/gprs/18#700#�ļ���������������#ftrans����·��\n
181#${BOSS_DATA7}/pp_yw/src/it01/gprs/19#700#�ļ���������������#ftrans����·��\n
182#${BOSS_DATA7}/pp_yw/src/it01/gprs/20#700#�ļ���������������#ftrans����·��\n
183#${BOSS_DATA7}/pp_yw/src/it01/gprs/21#700#�ļ���������������#ftrans����·��\n
184#${BOSS_DATA7}/pp_yw/src/it01/gprs/22#700#�ļ���������������#ftrans����·��\n
185#${BOSS_DATA7}/pp_yw/src/it01/gprs/23#700#�ļ���������������#ftrans����·��\n
186#${BOSS_DATA7}/pp_yw/src/it02/gprs/00#700#�ļ���������������#ftrans����·��\n
187#${BOSS_DATA7}/pp_yw/src/it02/gprs/01#700#�ļ���������������#ftrans����·��\n
188#${BOSS_DATA7}/pp_yw/src/it02/gprs/02#700#�ļ���������������#ftrans����·��\n
189#${BOSS_DATA7}/pp_yw/src/it02/gprs/03#700#�ļ���������������#ftrans����·��\n
190#${BOSS_DATA7}/pp_yw/src/it02/gprs/04#700#�ļ���������������#ftrans����·��\n
191#${BOSS_DATA7}/pp_yw/src/it02/gprs/05#700#�ļ���������������#ftrans����·��\n
192#${BOSS_DATA7}/pp_yw/src/it02/gprs/06#700#�ļ���������������#ftrans����·��\n
193#${BOSS_DATA7}/pp_yw/src/it02/gprs/07#700#�ļ���������������#ftrans����·��\n
194#${BOSS_DATA7}/pp_yw/src/it02/gprs/08#700#�ļ���������������#ftrans����·��\n
195#${BOSS_DATA7}/pp_yw/src/it02/gprs/09#700#�ļ���������������#ftrans����·��\n
196#${BOSS_DATA7}/pp_yw/src/it02/gprs/10#700#�ļ���������������#ftrans����·��\n
197#${BOSS_DATA7}/pp_yw/src/it02/gprs/11#700#�ļ���������������#ftrans����·��\n
198#${BOSS_DATA7}/pp_yw/src/it02/gprs/12#700#�ļ���������������#ftrans����·��\n
199#${BOSS_DATA7}/pp_yw/src/it02/gprs/13#700#�ļ���������������#ftrans����·��\n
200#${BOSS_DATA7}/pp_yw/src/it02/gprs/14#700#�ļ���������������#ftrans����·��\n
201#${BOSS_DATA7}/pp_yw/src/it02/gprs/15#700#�ļ���������������#ftrans����·��\n
202#${BOSS_DATA7}/pp_yw/src/it02/gprs/16#700#�ļ���������������#ftrans����·��\n
203#${BOSS_DATA7}/pp_yw/src/it02/gprs/17#700#�ļ���������������#ftrans����·��\n
204#${BOSS_DATA7}/pp_yw/src/it02/gprs/18#700#�ļ���������������#ftrans����·��\n
205#${BOSS_DATA7}/pp_yw/src/it02/gprs/19#700#�ļ���������������#ftrans����·��\n
206#${BOSS_DATA7}/pp_yw/src/it02/gprs/20#700#�ļ���������������#ftrans����·��\n
207#${BOSS_DATA7}/pp_yw/src/it02/gprs/21#700#�ļ���������������#ftrans����·��\n
208#${BOSS_DATA7}/pp_yw/src/it02/gprs/22#700#�ļ���������������#ftrans����·��\n
209#${BOSS_DATA7}/pp_yw/src/it02/gprs/23#700#�ļ���������������#ftrans����·��\n
210#${BOSS_DATA7}/pp_yw/src/it03/gprs/00#700#�ļ���������������#ftrans����·��\n
211#${BOSS_DATA7}/pp_yw/src/it03/gprs/01#700#�ļ���������������#ftrans����·��\n
212#${BOSS_DATA7}/pp_yw/src/it03/gprs/02#700#�ļ���������������#ftrans����·��\n
213#${BOSS_DATA7}/pp_yw/src/it03/gprs/03#700#�ļ���������������#ftrans����·��\n
214#${BOSS_DATA7}/pp_yw/src/it03/gprs/04#700#�ļ���������������#ftrans����·��\n
215#${BOSS_DATA7}/pp_yw/src/it03/gprs/05#700#�ļ���������������#ftrans����·��\n
216#${BOSS_DATA7}/pp_yw/src/it03/gprs/06#700#�ļ���������������#ftrans����·��\n
217#${BOSS_DATA7}/pp_yw/src/it03/gprs/07#700#�ļ���������������#ftrans����·��\n
218#${BOSS_DATA7}/pp_yw/src/it03/gprs/08#700#�ļ���������������#ftrans����·��\n
219#${BOSS_DATA7}/pp_yw/src/it03/gprs/09#700#�ļ���������������#ftrans����·��\n
220#${BOSS_DATA7}/pp_yw/src/it03/gprs/10#700#�ļ���������������#ftrans����·��\n
221#${BOSS_DATA7}/pp_yw/src/it03/gprs/11#700#�ļ���������������#ftrans����·��\n
222#${BOSS_DATA7}/pp_yw/src/it03/gprs/12#700#�ļ���������������#ftrans����·��\n
223#${BOSS_DATA7}/pp_yw/src/it03/gprs/13#700#�ļ���������������#ftrans����·��\n
224#${BOSS_DATA7}/pp_yw/src/it03/gprs/14#700#�ļ���������������#ftrans����·��\n
225#${BOSS_DATA7}/pp_yw/src/it03/gprs/15#700#�ļ���������������#ftrans����·��\n
226#${BOSS_DATA7}/pp_yw/src/it03/gprs/16#700#�ļ���������������#ftrans����·��\n
227#${BOSS_DATA7}/pp_yw/src/it03/gprs/17#700#�ļ���������������#ftrans����·��\n
228#${BOSS_DATA7}/pp_yw/src/it03/gprs/18#700#�ļ���������������#ftrans����·��\n
229#${BOSS_DATA7}/pp_yw/src/it03/gprs/19#700#�ļ���������������#ftrans����·��\n
230#${BOSS_DATA7}/pp_yw/src/it03/gprs/20#700#�ļ���������������#ftrans����·��\n
231#${BOSS_DATA7}/pp_yw/src/it03/gprs/21#700#�ļ���������������#ftrans����·��\n
232#${BOSS_DATA7}/pp_yw/src/it03/gprs/22#700#�ļ���������������#ftrans����·��\n
233#${BOSS_DATA7}/pp_yw/src/it03/gprs/23#700#�ļ���������������#ftrans����·��\n
234#${BOSS_DATA7}/pp_yw/src/it01/vac/#700#�ļ���������������#ftrans����·��\n
235#${BOSS_DATA7}/pp_yw/src/it02/vac/#700#�ļ���������������#ftrans����·��\n
236#${BOSS_DATA7}/pp_yw/src/it03/vac/#700#�ļ���������������#ftrans����·��\n
237#${BOSS_DATA7}/pp_yw/src/it01/sms/#700#�ļ���������������#ftrans��������·��\n
238#${BOSS_DATA7}/pp_yw/src/it02/sms/#700#�ļ���������������#ftrans��������·��\n
239#${BOSS_DATA7}/pp_yw/src/it03/sms/#700#�ļ���������������#ftrans��������·��
"

alerter()
{
pjid=$1
path=$2
limt=$3
ctnt=$4
note=$5
filecount=`ls -F1 ${path}|grep -vE "/|\*"|wc -l`
if [ ${filecount} -gt ${limt} ]; then
        printf "%-3s Ŀ¼(%s): %-50s  %s! �ļ�����Ϊ: %s(��ֵ:%s)WARNING! WARNING!\n" ${pjid} ${note} ${path} ${ctnt} ${filecount} ${limt}
else
        printf "%-3s Ŀ¼(%s): %-50s  �ļ�������������! �ļ�����Ϊ: %s(��ֵ:%s)  \n" ${pjid} ${note} ${path} ${filecount} ${limt}
fi
}
echo ${config}|while read line
do
pjid=`echo ${line}|cut -d '#' -f 1`
path=`echo ${line}|cut -d '#' -f 2`
limt=`echo ${line}|cut -d '#' -f 3`
ctnt=`echo ${line}|cut -d '#' -f 4`
note=`echo ${line}|cut -d '#' -f 5`
alerter "${pjid}" "${path}" "${limt}" "${ctnt}" "${note}"
done