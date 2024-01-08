<!DOCTYPE html>
<html class="centred">
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/comps/header.jsp"%>

<%@include file="/WEB-INF/comps/navbar.jsp"%>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body  >
		<div class="centred container py-3 my-3">
			<div class=" faq-column ">
				<ul class="accordion-box">
					<li class="accordion block active-block">
						<div class="acc-btn active">
							<h4>
								<span>Q.</span>How is endometriosis diagnosed?
							</h4>
						</div>
						<div class="acc-content current">
							<div class="text">
								<p>Endometriosis is typically diagnosed through a surgical
									procedure called laparoscopy, in which a small camera is
									inserted into the abdomen to visualize and biopsy the abnormal
									tissue. Some healthcare providers may make a clinical diagnosis
									based on symptoms and physical examination.</p>
							</div>
						</div>
					</li>
					<li class="accordion block">
						<div class="acc-btn">
							<h4>
								<span>Q.</span> What causes endometriosis?
							</h4>
						</div>
						<div class="acc-content">
							<div class="text">
								<p>The exact cause of endometriosis is not fully understood,
									but it is likely due to a combination of genetic, hormonal, and
									environmental factors. Retrograde menstruation, where menstrual
									blood flows back into the pelvis, is one possible explanation.</p>
							</div>
						</div>
					</li>
					<li class="accordion block">
						<div class="acc-btn">
							<h4>
								<span>Q.</span>there is a link between endometriosis and certain
								cancers?
							</h4>
						</div>
						<div class="acc-content">
							<div class="text">
								<p>There is some evidence of a slightly increased risk of
									certain ovarian cancers in individuals with endometriosis, but
									the overall risk is still relatively low. Regular medical
									check-ups and discussions with healthcare providers can help
									manage any potential concerns.</p>
							</div>
						</div>
					</li>
					<li class="accordion block">
    <div class="acc-btn ">
        <h4>
            <span>Q.</span>Can endometriosis affect fertility?
        </h4>
    </div>
    <div class="acc-content">
        <div class="text">
            <p>Yes, endometriosis can impact fertility. The condition may cause the formation of adhesions and scar tissue, affecting the function of the reproductive organs. Additionally, inflammation and hormonal imbalances associated with endometriosis can contribute to fertility issues.</p>
        </div>
    </div>
</li>

<li class="accordion block">
    <div class="acc-btn ">
        <h4>
            <span>Q.</span>At what age does endometriosis typically start?
        </h4>
    </div>
    <div class="acc-content ">
        <div class="text">
            <p>Endometriosis often starts during the reproductive years, typically in individuals between the ages of 15 and 49. However, symptoms may begin in the teenage years, and diagnosis may occur later, often after a delay due to the normalization of menstrual pain.</p>
        </div>
    </div>
</li>

<li class="accordion block">
    <div class="acc-btn ">
        <h4>
            <span>Q.</span>Is there a genetic component to endometriosis?
        </h4>
    </div>
    <div class="acc-content ">
        <div class="text">
            <p>There appears to be a genetic predisposition to endometriosis. If a close family member, such as a mother or sister, has the condition, an individual may have a higher risk of developing endometriosis themselves.</p>
        </div>
    </div>
</li>
<li class="accordion block ">
    <div class="acc-btn ">
        <h4>
            <span>Q.</span>Does pregnancy cure endometriosis?
        </h4>
    </div>
    <div class="acc-content ">
        <div class="text">
            <p>Pregnancy can temporarily alleviate symptoms of endometriosis for some individuals. However, it is not a guaranteed cure, and symptoms may return after pregnancy or during the postpartum period.</p>
        </div>
    </div>
</li>

<li class="accordion block ">
    <div class="acc-btn ">
        <h4>
            <span>Q.</span>Can endometriosis be diagnosed without surgery?
        </h4>
    </div>
    <div class="acc-content ">
        <div class="text">
            <p>While laparoscopic surgery is the most definitive way to diagnose endometriosis, healthcare providers may use a combination of medical history, symptoms, physical examinations, and imaging studies to make an initial diagnosis without surgery.</p>
        </div>
    </div>
</li>
<li class="accordion block">
    <div class="acc-btn">
        <h4>
            <span>Q.</span>Can endometriosis be managed with lifestyle changes?
        </h4>
    </div>
    <div class="acc-content">
        <div class="text">
            <p>While lifestyle changes alone cannot cure endometriosis, they may help manage symptoms. Regular exercise, a healthy diet, stress management, and adequate sleep can contribute to overall well-being and potentially alleviate some aspects of the condition.</p>
        </div>
    </div>
</li>

<li class="accordion block">
    <div class="acc-btn">
        <h4>
            <span>Q.</span>What role do hormones play in endometriosis?
        </h4>
    </div>
    <div class="acc-content">
        <div class="text">
            <p>Hormones, particularly estrogen, play a significant role in endometriosis. The condition is often estrogen-dependent, meaning that hormonal fluctuations during the menstrual cycle can influence the growth and activity of endometrial tissue outside the uterus.</p>
        </div>
    </div>
</li>
				</ul>
			</div>
		</div>
		<%@include file="/WEB-INF/comps/footer.jsp"%>
</body>

</html>